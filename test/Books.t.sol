// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "lib/forge-std/src/Test.sol";
import "../src/Books.sol";

contract BooksTest is Test {
    Books books;

    function setUp() public {
        books = new Books("Programming Foundry", "Your Name", 100);
    }

    function test_get_book() public {
        Books.Book memory book = books.get_book();
        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "Your Name");
        assertEq(book.pages, 100);
    }

    function test_updatePages() public {
        books.update_pages(200);
        Books.Book memory book = books.get_book();
        assertEq(book.pages, 200);
    }
}