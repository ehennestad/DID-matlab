function [test_results,test_messages] = run_test_invalid()
%RUN_TEST_INVALID runs tests for catching invalid modification to docs
%   Detailed explanation goes here
test_results = [];
test_messages = {};

[b,msg] = did.test.test_did_db_documents_invalid('value_modifier','int2str');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('value_modifier','blank int');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('value_modifier','blank str');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('value_modifier','nan');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('value_modifier','double');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('value_modifier','too negative');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('value_modifier','too positive');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('id_modifier','substring');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('id_modifier','replace_underscore');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('id_modifier','add');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('id_modifier','replace_letter_valid');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('id_modifier','replace_letter_invalid1');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('id_modifier','replace_letter_invalid2');
test_results(end+1) = b;
test_messages{end+1} = msg;
% yet to be implemented:
%
% [b,msg] = did.test.test_did_db_documents_invalid('datestamp_modifier','');
% test_results(end+1) = b;
% test_messages{end+1} = msg;
% [b,msg] = did.test.test_did_db_documents_invalid('session_id_modifier','');
% test_results(end+1) = b;
% test_messages{end+1} = msg;
% [b,msg] = did.test.test_did_db_documents_invalid('dependency_modifier','');
% test_results(end+1) = b;
% test_messages{end+1} = msg;

[b,msg] = did.test.test_did_db_documents_invalid('remover','document_properties');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','base');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','session_id');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','id');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','name');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','datestamp');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','demoA');
test_results(end+1) = b;
test_messages{end+1} = msg;
% yet to be implemented:
%
% [b,msg] = did.test.test_did_db_documents_invalid('remover','demoB');
% test_results(end+1) = b;
% test_messages{end+1} = msg;
% [b,msg] = did.test.test_did_db_documents_invalid('remover','demoC');
% test_results(end+1) = b;
% test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','value');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','document_class');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','definition');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','validation');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','class_name');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','property_list_name');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','class_version');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','superclasses');
test_results(end+1) = b;
test_messages{end+1} = msg;
[b,msg] = did.test.test_did_db_documents_invalid('remover','superclasses.definition');
test_results(end+1) = b;
test_messages{end+1} = msg;

end

