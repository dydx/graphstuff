class Comment

  # ?- what relationship does a post have with:
  #   - a user
  #   - a post
  #   - other comments
  #
  # ?- a comment belongs to a user, so perhaps:
  #   - a "authored_by" rel
  #
  # ?- a comment also belongs to a post, so perhaps:
  #   - a "comments_on" rel with Post

  include Neo4j::ActiveNode
  # created_at, updated_at
  include Neo4j::Timestamps

  # properties / "fields"
  property :body, type: String

  # validations

  # graph relationships / associations

end
