/*
/ Description: writes the game data into a buffer
/ Script Call: scr_write_game()
/ Parameters : none
/ Return     : void
*/

// set input

// write lobby data into new buffer
    //store server buffer in local variable because it will be called alot
    var buff = gameBuffer;
    
    //reset buffer to start - Networking ALWAYS reads from the START of the buffer
    buffer_seek(buff, buffer_seek_start, 0);
    
    //write msgId, SERVER_PLAY because client has already logged on
    buffer_write(buff, buffer_s8, SERVER_PLAY);
    
    //write packet sequence
    buffer_write(buff, buffer_u8, 0);//sequenceOut); Written in send buffer
    
    //state
    buffer_write(buff, buffer_u8, STATE_GAME);
    
    // hold space for specific camera x and y
    buffer_write(buff, buffer_s16, 0);
    buffer_write(buff, buffer_s16, 0);
    
    // delocalize the write buffer
    buffer = buff;
    
