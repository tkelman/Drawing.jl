
using Drawing
using Cairo

context(Axes(centred=true), Scale(1/200)) do cr

    save(cr)
    select_font_face (cr, "Sans", Cairo.FONT_SLANT_NORMAL,
                      Cairo.FONT_WEIGHT_BOLD)
    set_font_size (cr, 90.0)
    
    move_to (cr, 10.0, 135.0)
    show_text (cr, "Hello")
    
    move_to (cr, 70.0, 165.0)
    text_path (cr, "void")
    set_source_rgb (cr, 0.5, 0.5, 1)
    fill_preserve (cr)
    set_source_rgb (cr, 0, 0, 0)
    set_line_width (cr, 2.56)
    stroke (cr)
    
    # draw helping lines
    set_source_rgba (cr, 1, 0.2, 0.2, 0.6)
    arc (cr, 10.0, 135.0, 5.12, 0, 2*pi)
    close_path (cr)
    arc (cr, 70.0, 165.0, 5.12, 0, 2*pi)
    fill (cr)
        
    ## mark picture with current date
    restore(cr)
    move_to(cr,0.0,12.0)
    set_source_rgb (cr, 0,0,0)
    show_text(cr, strftime(time()))

end
