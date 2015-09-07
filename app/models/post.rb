class Post

  # ?- what relationship does a post have with:
  #   - a user
  #   - a comment
  #   - other posts
  #
  #  ?- a post belongs to a user, so perhaps:
  #   - a "belongs_to" or "authored_by" rel
  #     NOTE: Comment appears to have a similar working
  #           relationship with User, so are Comments
  #           flat with Posts?
  #
  #  ?- a post is atomic from other posts, so
  #     there is likely no need for relationships
  #
  #  ?- a post may have many comments, so perhaps an
  #     inbound relationship for Comment is needed

  include Neo4j::ActiveNode
  # created_at, updated_at
  include Neo4j::Timestamps

  # properties / "fields"
  property :title, type: String
  property :body, type: String

  # validations

  # graph relationships / associations

end
