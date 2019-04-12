///
//  Generated code. Do not modify.
//  source: protos/person.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

const Province$json = const {
  '1': 'Province',
  '2': const [
    const {'1': 'NL', '2': 0},
    const {'1': 'PE', '2': 1},
    const {'1': 'NS', '2': 2},
    const {'1': 'NB', '2': 3},
    const {'1': 'QC', '2': 4},
    const {'1': 'ON', '2': 5},
    const {'1': 'MB', '2': 6},
    const {'1': 'SK', '2': 7},
    const {'1': 'AB', '2': 8},
    const {'1': 'BC', '2': 9},
    const {'1': 'YT', '2': 10},
    const {'1': 'NT', '2': 11},
    const {'1': 'NU', '2': 12},
  ],
};

const Person$json = const {
  '1': 'Person',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'addressesList', '3': 2, '4': 3, '5': 11, '6': '.Address', '10': 'addressesList'},
    const {'1': 'childrenList', '3': 3, '4': 3, '5': 11, '6': '.Person', '10': 'childrenList'},
  ],
};

const Address$json = const {
  '1': 'Address',
  '2': const [
    const {'1': 'streetName', '3': 1, '4': 1, '5': 9, '10': 'streetName'},
    const {'1': 'city', '3': 2, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'province', '3': 3, '4': 1, '5': 14, '6': '.Province', '10': 'province'},
    const {'1': 'postalCode', '3': 4, '4': 1, '5': 13, '10': 'postalCode'},
  ],
};

