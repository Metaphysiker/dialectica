class BibtexMailer < ApplicationMailer
  default from: 'dialecticaphilosophie@gmail.com'

  def bibtex_is_finished_email(email, stuff)
    @email = email
    @stuff = stuff
    @url_for_file = rails_blob_url(@stuff.file, disposition: "attachment")

    mail(to: email, subject: "Dialectica - your file is ready")

  end

  def bibtex_is_ready_to_compare_email(array_of_originals, email, format)
    @array_of_originals = array_of_originals
    @email = email
    @format = format
    @url = bibtex_compare_author_bibtex_with_crossref_select_url(format, array_of_originals)
    #@url_for_file = rails_blob_url(@stuff.file, disposition: "attachment")

    mail(to: email, subject: "Dialectica - bibtex is ready to be compared")

  end

end
