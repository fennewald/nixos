{
  enable = true;
  includes = [
    {
      condition = "gitdir:~/agot/";
      contents = {
        user.name = "Carson";
        user.email = "carson@agot.ai";
      };
    }
    {
      condition = "gitdir:~/proj/";
      contents = {
        user.name = "fennewald";
        user.email = "c@rson.riker.me";
      };
    }
    {
      condition = "gitdir:~/nix/";
      contents = {
        user.name = "fennewald";
        user.email = "c@rson.riker.me";
      };
    }
    {
      condition = "gitdir:~/cp/";
      contents = {
        user.name = "fennewald";
        user.email = "c@rson.riker.me";
      };
    }
  ];
}
