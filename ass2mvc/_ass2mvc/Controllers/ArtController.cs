using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using _ass2mvc.Models;
using _ass2mvc.Models.business;

namespace _ass2mvc.Controllers
{
    public class ArtController : Controller
    {

        //private IRepository _repository;

        //public ArtController()
        //{
        //    _repository = new EFRepository();
        //}

        //public ArtController(IRepository repository)
        //{
        //    _repository = repository;
        //}


        private EntitiesConnection db = new EntitiesConnection();

        //
        // GET: /Art/

        public ActionResult Index()
        {
            var arts = db.Arts.Include(a => a.Author);
            return View(arts.ToList());
        }

        //
        // GET: /Art/Details/5

        public ActionResult Details(int id = 0)
        {
            Art art = db.Arts.Find(id);
            if (art == null)
            {
                return HttpNotFound();
            }
            return View(art);
        }


        //
        // GET: /Art/Display

        public ActionResult Display()
        {
            return View();
        }

        // GET: /Art/Search?query=seu
        public ActionResult Search(string query)
        {
            //IRepository repo = new EFRepository();
            var pm = new ArtManager();
            var model = pm.GetByName(query);
            if (model == null)
                return HttpNotFound("Not Found...");
            return View("Display", model);
        }


        //
        // GET: /Art/Create

        public ActionResult Create()
        {
            ViewBag.AuthorID = new SelectList(db.Authors, "AuthorID", "FirstName");
            return View();
        }

        //
        // POST: /Art/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Art art)
        {
            if (ModelState.IsValid)
            {
                db.Arts.Add(art);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.AuthorID = new SelectList(db.Authors, "AuthorID", "FirstName", art.AuthorID);
            return View(art);
        }

        //
        // GET: /Art/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Art art = db.Arts.Find(id);
            if (art == null)
            {
                return HttpNotFound();
            }
            ViewBag.AuthorID = new SelectList(db.Authors, "AuthorID", "FirstName", art.AuthorID);
            return View(art);
        }

        //
        // POST: /Art/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Art art)
        {
            if (ModelState.IsValid)
            {
                db.Entry(art).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AuthorID = new SelectList(db.Authors, "AuthorID", "FirstName", art.AuthorID);
            return View(art);
        }

        //
        // GET: /Art/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Art art = db.Arts.Find(id);
            if (art == null)
            {
                return HttpNotFound();
            }
            return View(art);
        }

        //
        // POST: /Art/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Art art = db.Arts.Find(id);
            db.Arts.Remove(art);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}