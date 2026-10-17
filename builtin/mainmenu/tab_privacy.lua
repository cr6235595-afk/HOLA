return {
        name = "privacy",
        caption = "Privacy Policy",

        cbf_formspec = function(tabview, name, tabdata)
                local fs = ""
                fs = fs .. "scroll_container[0.35,0.2;14.8,6.65;privacy_scroll;vertical]"
                local y = 0.2

                local function label(text)
                        fs = fs .. ("label[0.35,%f;%s]"):format(y, text)
                        y = y + 0.42
                end

                local function button(text, url)
                        fs = fs .. ("button_url[0.35,%f;6.8,0.65;btn_%d;%s;%s]"):format(
                                y, math.floor(y * 100), text, url)
                        y = y + 0.9
                end

                label("BlockCraft: Building Game")
                y = y + 0.15

                button("BlockCraft - Privacy Policy",
                        "https://blockcraftbuildinggame.blogspot.com/")

                button("Credits and Licenses",
                        "https://blockcraftbuildinggame.blogspot.com/2026/10/licenses-and-credits-blockcraft.html")

                label("Luanti 5.17.0-dev")
                y = y + 0.15
                label("This game uses the Luanti engine and Minetest Game,")
                label("Copyright 2010-2018 Perttu Ahola and contributors,")
                label("licensed under LGPLv2.1+")

                y = y + 0.1
                button("Luanti.org", "https://luanti.org/")

                label("Renderizador activo:")
                label("ES 3.2 / ogles2 / SDL 2.32.10")

                y = y + 0.35
                label("VoxeLibre")
                label("This game includes VoxeLibre, free software distributed")
                label("under the GNU General Public License v3.0 or later (GPLv3+).")
                label("VoxeLibre includes components and resources distributed")
                label("under various licenses, including GPLv3+, LGPL, MIT,")
                label("Apache, CC BY-SA and CC0.")
                label("Copyright notices and full license texts are preserved")
                label("in the game distribution within the corresponding")
                label("VoxeLibre files.")

                y = y + 0.15
                button("VoxeLibre GitHub",
                        "https://github.com/VoxeLibre/VoxeLibre")

                fs = fs .. "scroll_container_end[]"
                local max_scroll = math.max(0, math.ceil(y - 6.65))
                fs = fs .. ("scrollbaroptions[max=%d;smallstep=1;largestep=5]"):format(max_scroll)
                fs = fs .. "scrollbar[15.05,0.2;0.35,6.65;vertical;privacy_scroll;0]"

                return fs
        end,

        cbf_button_handler = function(this, fields, name, tabdata)
        end,

        on_change = function(type)
                if type == "ENTER" then
                        mm_game_theme.set_engine()
                end
        end,
}
