CREATE TABLE Users OF XMLType;

INSERT INTO
    Users
VALUES
    (
        XMLType(
            '<USER>
            <USER_ID>1</USER_ID>
            <NICK>Nick22</NICK>
            <PASSWORD>password123</PASSWORD>
            <EMAIL>test@gmail.com</EMAIL>
            <DATE>2022-10-09 15:45:21</DATE>
        </USER>'
        )
    );

CREATE TABLE Threads OF XMLType;

INSERT INTO
    Threads
VALUES
    (
        XMLType(
            '<THREAD>
        <THREAD_ID>1</THREAD_ID>
        <TITLE>Example title</TITLE>
        <DATE>2022-10-22 12:11:54</DATE>
        <USER>
            <USER_ID>1</USER_ID>
            <NICK>Nick22</NICK>
            <PASSWORD>password123</PASSWORD>
            <EMAIL>test@gmail.com</EMAIL>
            <DATE>2022-08-09 15:45:21</DATE>
        </USER>
        <CATEGORY>
            <CATEGORY_ID>1</CATEGORY_ID>
            <TITLE>Example category</TITLE>
        </CATEGORY>
    </THREAD>'
        )
    );

CREATE TABLE Posts OF XMLType;

INSERT INTO
    Posts
VALUES
    (
        XMLType(
            '<POST>
        <POST_ID>1</POST_ID>
        <CONTENT>Example post</CONTENT>
        <DATE>2022-10-09 15:45:21</DATE>
        <USER>
            <USER_ID>1</USER_ID>
            <NICK>Nick22</NICK>
            <PASSWORD>password123</PASSWORD>
            <EMAIL>test@gmail.com</EMAIL>
            <DATE>2022-08-09 15:45:21</DATE>
        </USER>
        <THREAD>
            <THREAD_ID>1</THREAD_ID>
            <TITLE>Example title</TITLE>
            <DATE>2022-10-22 12:11:54</DATE>
            <USER>
                <USER_ID>1</USER_ID>
                <NICK>Nick22</NICK>
                <PASSWORD>password123</PASSWORD>
                <EMAIL>test@gmail.com</EMAIL>
                <DATE>2022-08-09 15:45:21</DATE>
            </USER>
            <CATEGORY>
                <CATEGORY_ID>1</CATEGORY_ID>
                <TITLE>Example category</TITLE>
            </CATEGORY>
        </THREAD>
    </POST>'
        )
    );

CREATE TABLE Comments OF XMLType;

INSERT INTO
    Comments
VALUES
    (
        XMLType(
            '<COMMENT>
        <COMMENT_ID>1</COMMENT_ID>
        <CONTENT>Example comment</CONTENT>
        <DATE>2022-10-09 15:45:21</DATE>
        <USER>
            <USER_ID>1</USER_ID>
            <NICK>Nick22</NICK>
            <PASSWORD>password123</PASSWORD>
            <EMAIL>test@gmail.com</EMAIL>
            <DATE>2022-08-09 15:45:21</DATE>
        </USER>
        <POST>
        <POST_ID>1</POST_ID>
        <CONTENT>Example post</CONTENT>
        <DATE>2022-10-09 15:45:21</DATE>
        <USER>
            <USER_ID>1</USER_ID>
            <NICK>Nick22</NICK>
            <PASSWORD>password123</PASSWORD>
            <EMAIL>test@gmail.com</EMAIL>
            <DATE>2022-08-09 15:45:21</DATE>
        </USER>
        <THREAD>
            <THREAD_ID>1</THREAD_ID>
            <TITLE>Example title</TITLE>
            <DATE>2022-10-22 12:11:54</DATE>
            <USER>
                <USER_ID>1</USER_ID>
                <NICK>Nick22</NICK>
                <PASSWORD>password123</PASSWORD>
                <EMAIL>test@gmail.com</EMAIL>
                <DATE>2022-08-09 15:45:21</DATE>
            </USER>
            <CATEGORY>
                <CATEGORY_ID>1</CATEGORY_ID>
                <TITLE>Example category</TITLE>
            </CATEGORY>
        </THREAD>
    </POST>
    </COMMENT>'
        )
    );

CREATE TABLE Categories OF XMLType;

INSERT INTO
    Categories
VALUES
    (
        XMLType(
            '<CATEGORY>
        <CATEGORY_ID>1</CATEGORY_ID>
        <TITLE>Example category</TITLE>
    </CATEGORY>'
        )
    );