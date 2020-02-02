/// @description scr_send_tile_click()
/*
* Description:  send input data
* Parameters:   none
* Return:       void
*/


// start
with obj_client {
	var input = argument0
    // Move to start of buffer. Networking ALWAYS takes the data from the START of a buffer.
    buffer_seek(buff, buffer_seek_start, 0);

    //write msgId
    buffer_write(buff, buffer_s8, CLIENT_PLAY);
    
    // write command
    buffer_write(buff, buffer_u8, TILE_CMD);
    
    // write tile id
    buffer_write(buff, buffer_u32, input);

    // Send this to the server
    network_send_udp(client,ip,port,buff,buffer_tell(buff));
	//show_debug_message("Send tile click" + string(input))
}
