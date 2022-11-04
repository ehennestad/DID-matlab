function [b,msg] = test_did_db_documents(varargin)
% TEST_DID_BRANCHES - test the branching functionality of a DID database
%
% [B,MSG] = TEST_DID_DB_DOCUMENTS()
% 
% Tests the document adding functions of the did.database class, using the
% did.implementations.sqlitedb class.
%  
% This function first tries to delete a file 'test_db_docs.sqlite', and then
% makes a new database with the same filename.

% Step 1: make an empty database with a starting branch
delete test_db_docs.sqlite
db = did.implementations.sqlitedb('test_db_docs.sqlite');
db.add_branch('a');

% Step 2: generate a set of documents with node names and a graph of the dependencies
[G,node_names,docs] = did.test.documents.make_doc_tree([30 30 30]);

figure;
dG = digraph(G,node_names);
plot(dG,'layout','circle');
title('The dependency relationships among the randomly generated documents.');

for i=1:numel(docs)
	db.add_doc(docs{i});
end

% Step 3: check the database results
[b,msg] = did.test.documents.verify_db_document_structure(db, G, docs);

% Step 4: test the query capabilities

 % First, test did.query operation 'exact_string'

d1 = db.search(did.query('base.id','exact_string',docs{1}.id()));

if ~strcmp(d1.id(),docs{1}.id())
    b = 0;
    msg = ['Exact string operation failed'];
end;



