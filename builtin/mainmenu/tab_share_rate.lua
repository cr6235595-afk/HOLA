return {
        name = "community",
        caption = "Community",

        cbf_formspec = function(tabview, name, tabdata)
                local fs = ""

                fs = fs .. "box[0.3,0.35;13.8,1.35;#26364A]"
                fs = fs .. "label[0.8,0.65;JOIN THE BLOCKCRAFT COMMUNITY]"
                fs = fs .. "label[0.8,1.15;Help our world grow. Every player makes a difference!]"

                fs = fs .. "box[0.5,2.0;13.4,1.7;#202A35]"
                fs = fs .. "label[0.9,2.3;LOVE BUILDING IN BLOCKCRAFT?]"
                fs = fs .. "label[0.9,2.8;Invite your friends to explore, build and create with you.]"
                fs = fs .. "button[0.9,3.2;5.5,0.65;share_blockcraft;SHARE BLOCKCRAFT]"

                fs = fs .. "box[0.5,4.0;13.4,1.7;#202A35]"
                fs = fs .. "label[0.9,4.3;HELP US IMPROVE!]"
                fs = fs .. "label[0.9,4.8;Enjoying the game? Leave a rating on Google Play.]"
                fs = fs .. "button_url[0.9,5.2;5.5,0.65;rate_blockcraft;RATE THE GAME;https://play.google.com/store/apps/details?id=com.blockcraft.buildinggame2]"

                fs = fs .. "label[0.9,6.2;Thanks for being part of BlockCraft!]"

                return fs
        end,

                cbf_button_handler = function(this, fields, name, tabdata)
                if fields.share_blockcraft then
                        core.share_text("Check out BlockCraft: Building Game! https://play.google.com/store/apps/details?id=com.blockcraft.buildinggame2")
                        return true
                end
        end,

        on_change = function(type)
                if type == "ENTER" then
                        mm_game_theme.set_engine()
                end
        end,
}





