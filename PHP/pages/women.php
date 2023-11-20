<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OG Shop</title>
    <style>
        .nav_women {
            font-weight: 600;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <?php
        include 'php/navbar.php'

    ?>
    <div class="prev_container">
        <div class="prev_wrap">
            <div class="content_logo">
                <strong>ВЫ ЕЩЕ НЕ ОБНОВИЛИ ГАРДЕРОБ?</strong>
                <p>СМОТРИТЕ ВСЕ НАШИ НОВЫЕ КОЛЛЕКЦИИ</p>
                <button>КУПИТЬ СЕЙЧАС</button>
            </div>    
        </div>
    </div>
    <div class="content_container">
        <div class="content_wrap">
            <label for="#">Популярные куртки</label>
            <div class="content_wrap_things">
                <div class="things_content">
                    <img class="nike_women_jacket" src="../img/women/jacket/nike_women_jacket.jpg" alt="Контур Вещей">
                    <p>Ветровка 'Nike'</p>
                    <strong>$150<sup>.00</sup></strong>
                </div>
                <div class="things_content sale50">
                    <img class="gucci_women_jacket" src="../img/women/jacket/gucci_women_jacket.jpg" alt="Контур Вещей">
                    <p>Пуховик 'Gucci'</p>
                    <strong>$150<sup>.00</sup></strong>
                </div>
                <div class="things_content">
                    <img class="adidas_women_jacket" src="../img/women/jacket/adidas_women_jacket.jpg" alt="Контур Вещей">
                    <p>Кэжуал 'Adidas'</p>
                    <strong>$150<sup>.00</sup></strong>
                </div>
            </div>
        </div>
        <div class="content_wrap">
            <label for="#">Популярные штаны</label>
            <div class="content_wrap_things">
                <div class="things_content sale80">
                    <img class="nike_women_pants" src="../img/women/pants/nike_women_pants.jpg" alt="Контур Вещей">
                    <p>Спортивные 'Nike'</p>
                    <strong>$150<sup>.00</sup></strong>
                </div>
                <div class="things_content">
                    <img class="puma_women_pants" src="../img/women/pants/puma_women_pants.jpg" alt="Контур Вещей">
                    <p>Легкие шатаны 'Puma'</p>
                    <strong>$150<sup>.00</sup></strong>
                </div>
                <div class="things_content">
                    <img class="gucci_women_pants" src="../img/women/pants/gucci_women_pants.jpg" alt="Контур Вещей">
                    <p>Деловые штаны 'Gucci'</p>
                    <strong>$150<sup>.00</sup></strong>
                </div>
            </div>
        </div>
        <div class="content_wrap">
            <label for="#">Популярные кросовки</label>
            <div class="content_wrap_things">
                <div class="things_content sale80">
                    <img class="puma_women_choes" src="../img/women/choes/puma_women_choes.jpg" alt="Контур Вещей">
                    <p>Мягкие кросовки 'Puma'</p>
                    <strong>$150<sup>.00</sup></strong>
                </div>
                <div class="things_content">
                    <img class="nike_women_choes" src="../img/women/choes/nike_women_choes_hover.jpg" alt="Контур Вещей">
                    <p>Балоновые кросовки 'Nike'</p>
                    <strong>$150<sup>.00</sup></strong>
                </div>
                <div class="things_content">
                    <img class="gucci_women_choes" src="../img/women/choes/gucci_women_choes.jpg" alt="Контур Вещей">
                    <p>Сапожки 'Gucci'</p>
                    <strong>$150<sup>.00</sup></strong>
                </div>
            </div>
        </div>
        <div class="content_wrap pend60">
            <div class="content_brand">
                <div class="content_brand_icon">
                    <img src="../img/icon/nike.jpg" alt="">
                    <span>Nike</span>
                    <p>Man / Women</p>
                </div>
                <div class="content_brand_icon">
                    <img src="../img/icon/adidas.jpg" alt="">
                    <span>Adidas</span>
                    <p>Man / Women</p>
                </div>
                <div class="content_brand_icon">
                    <img src="../img/icon/puma.jpg" alt="">
                    <span>Puma</span>
                    <p>Man / Women</p>
                </div>
                <div class="content_brand_icon">
                    <img src="../img/icon/gucci.jpg" alt="">
                    <span>Gucci</span>
                    <p>Man / Women</p>
                </div>
                <div class="content_brand_icon">
                    <img src="../img/icon/norhtface.jpg" alt="">
                    <span>North Face</span>
                    <p>Man / Women</p>
                </div>
            </div>
        </div> 
    </div>
    <footer>
        <div class="footer_container_wrap">
            <div class="colums1">
                <strong>О нашем магазине</strong>
                <br><br>
                <p>Адресс</p>
                <p>Молдова, Кишинев</p>
                <strong>+37360944429</strong>
                <br><br>
                <p>Адресс франшизы</p>
                <p>Молдова, Кишинев</p>
                <strong>+37360944429</strong>
            </div>
            <div class="colums2">
                <strong>Сообщение блога</strong>
                <br><br>
                <span>Duis aute irure dolor in reprehenderit.</span>
                <p>in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                <br>
                <strong>Ut enim ad minim veniam.</strong>
                <br>
                <p>in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
            </div>
            <div class="colums3">
                <strong>Поддержка</strong>
                <br>
                <a href="#">Условия и предложения</a>
                <a href="#" class="FAQ">FAQ</a>
                <a href="#">Оплата</a>
                <a href="#">Возврат</a>
                <a href="#">Доставка</a>
                <a href="#">Сервис</a>
            </div>
        </div>
    </footer>
    <div class="end">
        <p>Было сделано в 2020 году компанией которой нету на VSCode</p>
        <span>
            <img src="../img/icon/card/visa.png" alt="Банковская карта">
            <img src="../img/icon/card/mastercard.png" alt="Банковская карта">
        </span>
    </div>
</body>
</html>