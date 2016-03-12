#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'webrick'

class TestContentServlet < WEBrick::HTTPServlet::AbstractServlet
  def do_GET
    res.body = case req.path
               when /¥.html$/; html_content req.path
  end
end