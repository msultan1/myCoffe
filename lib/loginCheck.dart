import 'package:gsheets/gsheets.dart';

const _credentials = r'''
{
  "type": "service_account",
  "project_id": "",
  "private_key_id": "",
  "private_key": "",
  "client_email": "",
  "client_id": "",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": ""
}
''';
const _spreadsheetId = '';
 class GoogleSheetsAPI {

   Future<void> auth () async {
    final gsheets = GSheets(_credentials);
    // fetch spreadsheet by its id
    final ss = await gsheets.spreadsheet(_spreadsheetId);
    // get worksheet by its title
    var sheet =  ss.worksheetByTitle('example');
    // create worksheet if it does not exist yet
    sheet ??= await ss.addWorksheet('example');
    // update cell at 'B2' by inserting string 'new'
    await sheet.values.insertValue('new', column: 2, row: 2);
    // prints 'new'
    print(await sheet.values.value(column: 2, row: 2));
    // get cell at 'B2' as Cell object
    final cell = await sheet.cells.cell(column: 2, row: 2);
    // prints 'new'
    print(cell.value);
    // update cell at 'B2' by inserting 'new2'
    await cell.post('new2');
    // prints 'new2'
    print(cell.value);
    // also prints 'new2'
    print(await sheet.values.value(column: 2, row: 2));
    // append row in the followind columns with his values
    final secondRow = {
    'index': '5',
    'letter': 'f',
    'number': '6',
    'label': 'f6',
    };
    await sheet.values.map.appendRow(secondRow);
    // prints {index: 5, letter: f, number: 6, label: f6}
    print(await sheet.values.map.lastRow());
  }

}