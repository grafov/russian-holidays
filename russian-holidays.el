;;; russian-holidays.el --- Russian holidays for Emacs calendar

;; Author: Alexander I.Grafov <siberian@laika.name>
;; URL: https://github.com/grafov/russian-holidays
;; Version: 0.1

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Installation:
;;
;; To use `holiday-russian-holidays' exclusively for the calendar
;;
;;  (setq calendar-holidays holiday-russian-holidays)
;;
;; To use 'holiday-russian-holidays' additionally to other calenders
;;
;;  (setq calendar-holidays (append calendar-holidays holiday-russian-holidays))
;;
;; If you'd like to add regional holidays, you can use it like in this
;; example for Chuvash respublic
;;
;;  (setq calendar-holidays (append calendar-holidays holiday-russian-holidays holiday-russian-chuvash-holidays))
;;
;; This works for for all regions noted in
;; https://ru.wikipedia.org/wiki/Праздники_России article.
;;
;;  `holiday-russian-bashkir-holidays'
;;  `holiday-russian-buryat-holidays'
;;  `holiday-russian-tatar-holidays'
;;  etc.
;;

;;; Code:
(eval-when-compile
  (require 'calendar)
  (require 'holidays))

; Holidays data based on the article
; https://ru.wikipedia.org/wiki/Праздники_России
(defvar holiday-russian-holidays
  '((holiday-fixed 1 1 "Новый год") ; New Year day
    (holiday-fixed 1 2 "Новогодние каникулы") ; New Year holidays
    (holiday-fixed 1 3 "Новогодние каникулы") ; New Year holidays
    (holiday-fixed 1 4 "Новогодние каникулы") ; New Year holidays
    (holiday-fixed 1 5 "Новогодние каникулы") ; New Year holidays
    (holiday-fixed 1 6 "Новогодние каникулы") ; New Year holidays
    (holiday-fixed 1 7 "Рождество Христово") ; Christmas day according
					     ; to the Julian calendar
					     ; used by the Russian
					     ; Orthodox Church
    (holiday-fixed 1 8 "Новогодние каникулы") ; New Year holidays
    (holiday-fixed 2 23 "День защитника Отечества") ; Defender of the
						   ; Fatherland Day
    (holiday-fixed 3 8 "Международный женский день") ; International
						     ; Women's Day
    (holiday-fixed 5 1 "Праздник Весны и Труда") ; Spring and Labour
						 ; Day
    (holiday-fixed 5 9 "День Победы") ; Victory Day
    (holiday-fixed 6 12 "День России") ; Russia Day
    (holiday-fixed 11 4 "День народного единства")) ; Unity Day
  "Official state holidays in Russian Federation.")

(provide 'russian-holidays)

;;; russian-holidays.el ends here
