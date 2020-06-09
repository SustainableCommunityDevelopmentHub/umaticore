extends layout

block content
  .pb-2.mt-2.mb-4.border-bottom
    h3 Contact Form

  form(method='POST')
    input(type='hidden', name='_csrf', value=_csrf)
    if (unknownUser)
      .form-group.row
        label(class='col-md-2 col-form-label font-weight-bold', for='name') Name
        .col-md-8
          input.form-control(type='text', name='name', id='name', autocomplete='name', autofocus, required)
      .form-group.row
        label(class='col-md-2 col-form-label font-weight-bold', for='email') Email
        .col-md-8
          input.form-control(type='email', name='email', id='email', autocomplete='email', required)
    .form-group.row
      label(class='col-md-2 col-form-label font-weight-bold', for='message') Please describe the issue or your suggestion
      .col-md-8
        textarea.form-control(name='message', id='message', rows='7', autofocus=(!unknownUser).toString(), required)
    .form-group
      .offset-md-2.col-md-8.p-1
        button.btn.btn-primary(type='submit')
          i.far.fa-envelope.fa-sm
          | Send
