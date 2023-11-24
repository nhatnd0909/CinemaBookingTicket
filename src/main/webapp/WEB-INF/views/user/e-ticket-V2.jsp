<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>E-Ticket</title>
    <link rel="stylesheet" type="text/css" href="assets/css/e-ticket-V2.css" />
    <link
      href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
    />
  </head>
  <body>
    <div class="ticket">
      <div class="left">
        <div class="image">
          <p class="admit-one">
            <span>ADMIT ONE</span>
            <span>ADMIT ONE</span>
            <span>ADMIT ONE</span>
          </p>
          <div class="ticket-number">
            <p>#20200702</p>
          </div>
        </div>
        <div class="ticket-info">
          <p class="date">
            <span>WEDNESDAY</span>
            <span class="nov-10">JUNE 28th</span>
            <span>2023</span>
          </p>
          <div class="show-name">
            <h1>#WarriorNunSaved</h1>
            <h2>Warrior Nun Cast & Crew</h2>
            <h2>Halo Bearers</h2>
          </div>
          <div class="time">
            <p>07:16 AM <span>TO</span> TBD</p>
          </div>
          <div class="tagline">
            <p>IN THIS LIFE OR THE NEXT</p>
          </div>
          <p class="location">
            <span>THE CAT'S CRADLE</span>
            <span class="separator"><i class="fa-solid fa-cross"></i></span
            ><span>ANDALUCÍA, SPAIN</span>
          </p>
        </div>
      </div>
      <div class="right">
        <p class="admit-one">
          <span>ADMIT ONE</span>
          <span>ADMIT ONE</span>
          <span>ADMIT ONE</span>
        </p>
        <div class="right-info-container">
          <div class="show-name">
            <h1>#WarriorNunSaved</h1>
          </div>
          <div class="time">
            <p>28.06.2023</p>
            <p>07:16 AM <span>TO</span> TBD</p>
          </div>
          <div class="barcode">
            <img src="https://i.imgur.com/DiBJvTA.png" alt="QR code" />
          </div>
          <p class="ticket-number">#20200702</p>
        </div>
      </div>
    </div>
  </body>
</html>
