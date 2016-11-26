$(document).ready(function() {
  $('.vote-count').on('click', function(event) {
    var voteField = $(this)
    var voteableId = voteField.attr('voteable-id');
    var voteableType = voteField.attr('voteable-type');
    var upVote = voteField.attr('up-vote');

    $.post('/votes', {
      'voteable_type': voteableType,
      'voteable_id': voteableId,
      'up_vote': upVote,
    }, function(data) {
      if (data.success === true) {
        voteField.text("Upvote " + data.vote_count)
      }
    });
  });
});
