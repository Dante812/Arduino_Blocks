
<div class="container">
  <div class="row">
    <div class="col-md-12 border">
      <h2 class="text-center">Void Setup</h2>
      <!-- тут контейнер в якому будуть розміщатись створені змінні -->
      <div id="containerForVariables"></div>

      <!-- тут форма для створення змінних -->
      <div class="row">
        <!-- селектор -->
        <div class="form-group col-md-3">
          <select id="inputTypeVariable" class="form-control">
        <option selected value="nonType">Choose Type</option>
        <option value="int">INT</option>
        <option value="boolean">BOOLEAN</option>
        <option value="String">STRING</option>
        <option value="float">FLOAT</option>
        <option value="double">DOUBLE</option>
        <option value="long">LONG</option>
      </select>
        </div>
        <!-- кінець селектору -->

        <!-- текстове поле для введення імені -->
        <div class="form-group col-md-4">
          <input required type="text" class="form-control" id="inputVariableName" placeholder="Name">
        </div>
        <!-- кінець текстового поля -->

        <!-- текстове поле для введення значення -->
        <div class="form-group col-md-4">
          <input required type="text" class="form-control" id="inputVariableValue" placeholder="Value">
        </div>
        <!-- кінець текстового поля -->

        <!-- кнопка додати -->
        <div class="form-group col-md-1">
          <button class="btn btn-primary" onclick="variablesHandler.addVariable()">ADD</button>
        </div>
        <!-- кінець кнопки -->
      </div>
      <!-- кінець форми для створення змінних -->

      <!-- тут буде контейнер для створення елементів -->
      <div id="containerForElements"></div>

      <!-- тут буде форма для довавання елементів -->
      <div class="row">
        <!-- селектор вибору піна -->
        <div class="form-group col-md-3">
          <select id="inputPIN" class="form-control">
        <option selected value="nonPin">Choose PIN</option>
        <option value="0">D0</option>
        <option value="1">D1</option>
        <option value="2">D2</option>
        <option value="3">D3</option>
        <option value="4">D4</option>
        <option value="5">D5</option>
        <option value="6">D6</option>
        <option value="7">D7</option>
        <option value="8">D8</option>
        <option value="9">D9</option>
        <option value="10">D10</option>
        <option value="11">D11</option>
        <option value="12">D12</option>
        <option value="13">D13</option>
        <option value="A0">A0</option>
        <option value="A1">A1</option>
        <option value="A2">A2</option>
        <option value="A3">A3</option>
        <option value="A4">A4</option>
        <option value="A5">A5</option>
      </select>
        </div>
        <!-- кінець селектору -->
        <!-- селектор вибору типу елементу -->
        <div class="form-group col-md-4">
          <select id="inputElementType" class="form-control">
        <option selected value="nonType">Choose Element Type</option>
        <option value="INPUT">INPUT</option>
        <option value="OUTPUT">OUTPUT</option>
      </select>
        </div>
        <!-- кінець селектору -->

        <!-- текстове поле для введення імені -->
        <div class="form-group col-md-4">
          <input required type="text" class="form-control" id="inputElementName" placeholder="Name">
        </div>
        <!-- кінець текстового поля -->

        <!-- кнопка додати -->
        <div class="form-group col-md-1">
          <button class="btn btn-primary" onclick="elementsHandler.addElement()">ADD</button>
        </div>
        <!-- кінець кнопки -->

        <!-- поле для вибору частоти Serial.begin -->
        <div class="form-group form-inline col-md-12">
          <label class="form-control col-md-2" for="">Serial.begin = </label>
          <select id="serialBeginSelect" class="form-control col-md-10">
            <option selected value="9600">9600</option>
            <option value="300">300</option>
            <option value="1200">1200</option>
            <option value="2400">2400</option>
            <option value="4800">4800</option>
            <option value="14400">14400</option>
            <option value="19200">19200</option>
            <option value="28800">28800</option>
            <option value="38400">38400</option>
            <option value="57600">57600</option>
            <option value="115200">115200</option>
          </select>
        </div>


      </div>
      <div class="row">
        <!-- форма для void loop -->
        <div class="col-md-12" id="actionsContainer">
          <h2 class="text-center">Void Loop</h2>
        </div>
        <div class="form-group col-md-11">
          <select id="inputAction" class="form-control">
            <option selected value="none">Choose action</option>
            <option value="Serial.println">Serial.println</option>
            <option value="delay">delay</option>
            <option value="digitalWrite">digitalWrite</option>
            <option value="digitalRead">digitalRead</option>
          </select>
        </div>
        <!-- кнопка додати -->
        <div class="form-group col-md-1">
          <button data-toggle="modal" id="addActionButton" data-target="#" class="btn btn-primary" onclick="actionsHandler.showModalAction()">ADD</button>
        </div>
        <!-- кінець кнопки -->
      </div>

      <!-- тут кнопка для генерування і відправлення коду на обробку -->
      <div class="row">
        <div class="col-md-12">
          <!-- <form action="../../../cgi-bin/pro.pl " method="POST"> -->
          <input type="hidden" name="variables" id="senderVariables" value="">
          <input type="hidden" name="elements" id="senderElements" value="">
          <input type="hidden" name="actions" id="senderActions" value="">
          <input type="hidden" name="serialBegin" id="senderSerialBegin" value="">
          <button class="btn btn-success col-md-12" onclick="globalHandler.sendData()">GENNERATE</button>
          <!-- </form> -->
        </div>
      </div>
      <!-- кінець кнопки -->

      <!-- тут буде розміщений той код який буде відправлено на сервер (для дебагу) -->
      <div class="row" id="code"></div>
    </div>
  </div>
</div>
<!-- модальні вікна -->

<!-- модальне вікно для команди Serial.println -->
<div class="modal fade" id="serialPrintlnModal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">

      <div class="modal-header">
        <span>Serial.println</span>
      </div>
      <div class="modal-body">
        <div class="form-row">
          <div class="col-md-6">
            <label for="">Value</label>
            <select id="inputSerialValue" class="form-control variablesSelect elementsSelect">
              <option value="none">none</option>
            </select>
          </div>

          <div class="col-md-6">
            
            <input type="text" class="form-control form-control-sm" id="serialPrintln">
          </div>
        </div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Закрити</button>
        <button type="button" id="switchModalSave" onclick="actionsHandler.addSerialPrintln()" data-dismiss="modal" class="btn btn-success">Зберегти</button>
      </div>
    </div>
  </div>
</div>
<!-- кінець одального вікна Serial.println -->

<!-- модальне вікно для команди delay -->
<div class="modal fade" id="delayModal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">

      <div class="modal-header">
        <span>delay</span>
      </div>

      <div class="modal-body">
        <div class="form-group">
          <label for="time">Time</label>
          <input type="number" class="form-control form-control-sm" id="delay">
        </div>

      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Закрити</button>
        <button type="button" id="switchModalSave" onclick="actionsHandler.addDelay()" data-dismiss="modal" class="btn btn-success">Зберегти</button>
      </div>
    </div>
  </div>
</div>
<!-- кінець модального вікна delay -->

<!-- модальне вікно для команди digitalWrite -->
<div class="modal fade" id="digitalWriteModal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">

      <div class="modal-header">
        <span>digitalWrite</span>
      </div>

      <div class="modal-body">
        <div class="form-row">
          <div class="col-md-6">
            <label>Value</label>
            <select id="inputDigitalWriteValue" class="form-control elementsSelect"></select>
          </div>

          <div class="col-md-6">
            <label>Voltage</label>
            <select id="digitalStatus" class="form-control">
              <option selected value="HIGH">HIGH</option>
              <option value="LOW">LOW</option>
            </select>
          </div>
        </div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Закрити</button>
        <button type="button" id="switchModalSave" onclick="actionsHandler.addDigitalWrite()" data-dismiss="modal" class="btn btn-success">Зберегти</button>
      </div>
    </div>
  </div>
</div>
<!-- кінець модального вікна digitalWrite -->

<!-- модальне вікно для команди digitalRead -->
<div class="modal fade" id="digitalReadModal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <span>digitalRead</span>
      </div>
      <!-- Тіло модального вікна -->
      <div class="modal-body">
        <div class="col-md-6">
          <span></span>
          <!-- селектор змінних куди необхідно передати дані -->
          <select id="digitalReadValue" class="form-control variablesSelect"></select>
          <!-- кінець селектору -->
          <!-- селектор команд які працюватимуть із даними -->
          <select id="digitalReadComand" class="form-control">
            <option selected value="none">Choose action</option>
            <option value="Serial.println">Serial.println</option>
            <option value="digitalWrite">digitalWrite</option>
          </select>
          <!-- кінець селектору -->
        </div>

        <div class="col-md-6">
          <!-- селектор елементів з яких ми беремо дані -->
          <select id="digitalReadElement" class="form-control elementsSelect"></select>
          <!-- кінець селектору -->
        </div>
      </div>
      <!-- кінець тіла модального вікна -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Закрити</button>
        <button type="button" id="switchModalSave" onclick="actionsHandler.addDigitalRead()" data-dismiss="modal" class="btn btn-success">Зберегти</button>
      </div>
    </div>
  </div>
</div>
<!-- кінець модального вікна digitalRead -->

<!-- підключення мого скріпта -->
<script src="/styles/default_adm/js/modules/arduino_blocks_js/test.js"></script>

