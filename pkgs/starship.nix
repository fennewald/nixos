{
  enable = true;
  settings = {
      format = "($cmd_duration\n)($c$golang$haskell$julia$ocaml$perl$python$rust$zig\n)[┌($nix_shell)($username)($hostname)($directory)($git_branch)($git_status)($package)\n└─ω ](fg:#38e076)";
      continuation_prompt = "::";

      cmd_duration = {
          format = "[took $duration]()";
          min_time = 2000;
          show_milliseconds = true;
      };

      c = {
          style = "bold fg:blue";
          format = " []($style) [$version](fg:black)";
      };
      golang = {
          style = "bold fg:blue";
          format = " []($style) [$version](fg:black)";
      };
      haskell = {
          style = "bold fg:purple";
          format = " [ﬦ]($style) [$version](fg:black)";
      };
      julia = {
          style = "bold fg:purple";
          format = " [ஃ]($style) [$version](fg:black)";
      };
      ocaml = {
          style = "bold fg:blue";
          format = " [🐫]($style) [$version](fg:black)";
      };
      perl = {
          style = "bold fg:yellow";
          format = " [🐫]($style) [$version](fg:black)";
      };
      python = {
          style = "bold fg:green";
          format = " []($style) [$version](fg:black)";
      };
      rust = {
          style = "bold fg:red";
          format = " [🦀]($style) [$version](fg:black)";
      };
      zig = {
          style = "bold fg:yellow";
          format = " [⚡]($style) [$version](fg:black)";
      };

      nix_shell = {
          format = "─\\[❄️\\]";
      };
      username = {
          format = "─\\[$user\\]";
      };
      hostname = {
          ssh_only = true;
          format = "─\\[$hostname\\]";
      };
      directory = {
          format = "─\\[$path\\]";
      };
      git_branch = {
          format = "─\\[$branch\\]";
      };
      git_status = {
          format = "─\\[$all_status\\]";
      };
      package = {
          format = "─\\[$version\\]";
      };
      git_metrics = {
          added_style = "fg:#00ff00";
          deleted_style = "fg:#ff0000";
          format = "─\\[([+$added]($added_style))([-$deleted]($deleted_style))\\]";
          disabled = false;
      };
  };
}
