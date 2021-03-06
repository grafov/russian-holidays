# Russian holidays for Emacs calendar [![MELPA Stable](https://stable.melpa.org/packages/russian-holidays-badge.svg)](https://stable.melpa.org/#/russian-holidays) [![MELPA](https://melpa.org/packages/russian-holidays-badge.svg)](https://melpa.org/#/russian-holidays) 


This mode adds Russian holidays for GNU/Emacs calendar. Russian Federation is multinational country with own holidays in different regions. The package has info about official state holidays and official regional holidays.

## Sources of data

* "[Праздники России](https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B0%D0%B7%D0%B4%D0%BD%D0%B8%D0%BA%D0%B8_%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8)"
* "[Справка о нерабочих праздничных днях, профессиональных праздниках и памятных датах](http://base.garant.ru/4029129/)"

There are a lot of differences between documents in internet so please
report about wrong namings and dates.

## Restrictions

There is only limited subset of holidays added:

* Only official state holidays counted.
* It based on the modern data for last years so it not applicable to
  previous years or historical holidays.
* It don't show holidays without fixed calendar dates yet (except Orthodox Easter)
* For regional holidays only dates with official day offs counted (no
  memorial days etc.)

## Installation

To use `russian-holidays` exclusively for the calendar:

```
 (require 'calendar)
 (require 'russian-holidays)
 (setq calendar-holidays russian-holidays)
```

To use `russian-holidays` additionally to other calenders:

```
 (setq calendar-holidays (append calendar-holidays russian-holidays))
```

If you'd like to add regional holidays, you can use it like in this
example for Chuvash respublic (regional names use ISO-3166-2 codes):

```
 (setq calendar-holidays (append calendar-holidays russian-holidays russian-holidays-cu-holidays))
```

This works for for all regions noted in
https://ru.wikipedia.org/wiki/Праздники_России article. 

Calendar variables use regional codes as described in
[ISO 31666-2](https://ru.wikipedia.org/wiki/ISO_3166-2:RU). For
example Tatarstan `russian-holidays-ta-holidays`, Bashkortostan
`russian-holidays-ba-holidays` etc.

## License

GPLv3 for the code. Calendar data is public domain.

## Future

I am interesting for calculating dates of Muslim and Buddhism holidays.
