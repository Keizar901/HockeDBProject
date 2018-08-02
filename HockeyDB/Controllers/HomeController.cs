using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HockeyDB.Models;

namespace HockeyDB.Controllers
{
    public class HomeController : Controller
    {
        private PlayersDBEntities1 _db = new PlayersDBEntities1();

        public ActionResult Index()
        {
            return View(_db.Players.ToList());
        }

        //
        // GET: /Home/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Home/Create


        public ActionResult Create()
        {


            return View();
       
        }

        //
        // POST: /Home/Create

        [HttpPost]
        public ActionResult Create([Bind(Exclude ="Id")] Player playerToCreate)
        {
            if (!ModelState.IsValid)
                return View();


            _db.Players.Add(playerToCreate);
            _db.SaveChanges();

            return RedirectToAction("Index");
        }

        //
        // GET: /Home/Edit/5

        public ActionResult Edit(int id)
        {
            var playerToEdit = (from p in _db.Players

                               where p.Id == id

                               select p).First();

            return View(playerToEdit);

        }

        //
        // POST: /Home/Edit/5

        [HttpPost]
        public ActionResult Edit(Player playerToEdit)
        {
            var originalPlayer = (from p in _db.Players
                                 where p.Id == playerToEdit.Id
                                 select p).First();

            if (!ModelState.IsValid)
                return View(originalPlayer);

            _db.Entry(originalPlayer).CurrentValues.SetValues(playerToEdit);
            _db.SaveChanges();

            return RedirectToAction("Index");
        }

        //
        // GET: /Home/Delete/5

        public ActionResult Delete(int id)
        {
            var playerToDelete = (from p in _db.Players

                                where p.Id == id

                                select p).First();

            return View(playerToDelete);
        }

        //
        // POST: /Home/Delete/5

        [HttpPost]
        public ActionResult Delete(Player playerToDelete)
        {
            var selectedPlayer = (from p in _db.Players

                                 where p.Id == playerToDelete.Id

                                 select p).First();

            if (!ModelState.IsValid)
                return View(playerToDelete);

            _db.Players.Remove(selectedPlayer);
            _db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
