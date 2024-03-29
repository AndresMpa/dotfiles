/*
Copyright 2019 @foostan
Copyright 2020 Drashna Jaelre <@drashna>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include QMK_KEYBOARD_H
#include "keymap_spanish.h"
#include <stdio.h>

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [0] = LAYOUT_split_3x6_3(
  //,-----------------------------------------------------.                ,-----------------------------------------------------.
    KC_TAB,  ES_Q,    ES_W,    ES_E,    ES_R,    ES_T,                      ES_Y,    ES_U,    ES_I,    ES_O,    ES_P,    KC_BSPC,
  //|--------+--------+--------+--------+--------+--------|                |--------+--------+--------+--------+--------+--------|
    KC_ESC,  ES_A,    ES_S,    ES_D,    ES_F,    ES_G,                      ES_H,    ES_J,    ES_K,    ES_L,    ES_NTIL, KC_ESC,
  //|--------+--------+--------+--------+--------+--------|                |--------+--------+--------+--------+--------+--------|
    KC_LCTL, ES_Z,    ES_X,    ES_C,    ES_V,    ES_B,                      ES_N,    ES_M,    KC_COMM, KC_DOT,  KC_SLSH, TG(1),
  //|--------+--------+--------+--------+--------+--------+------|  |------+--------+--------+--------+--------+--------+--------|
                                         KC_LGUI,  MO(3), KC_SPC,   KC_ENT,   MO(2), KC_RSFT
                                      //`------------------------'  `--------------------------'
  ),

  [1] = LAYOUT_split_3x6_3(
  //,-----------------------------------------------------.                ,-----------------------------------------------------.
    KC_TAB,  KC_DOT,  KC_COMM, ES_NTIL, ES_P,    ES_Y,                      ES_F,    ES_G,    ES_C,    ES_H,    ES_L,    KC_BSPC,
  //|--------+--------+--------+--------+--------+--------|                |--------+--------+--------+--------+--------+--------|
    KC_ESC,  ES_A,    ES_O,    ES_E,    ES_U,    ES_I,                      ES_D,    ES_R,    ES_T,    ES_N,    ES_S,    KC_RCTL,
  //|--------+--------+--------+--------+--------+--------|                |--------+--------+--------+--------+--------+--------|
    ES_LABK, KC_SLSH, ES_Q,    ES_J,    ES_K,    ES_X,                      ES_B,    ES_M,    ES_W,    ES_V,    ES_Z,    TG(1),
  //|--------+--------+--------+--------+--------+--------+------|  |-------+--------+--------+--------+--------+--------+--------|
                                        KC_LGUI,  MO(3), KC_SPC,   KC_ENT,   MO(2),  KC_RSFT
                                      //`------------------------'  `--------------------------'
  ),

  [2] = LAYOUT_split_3x6_3(
  //,-----------------------------------------------------.                 ,-----------------------------------------------------.
    KC_PPLS, KC_PMNS,  ES_1,    ES_2,    ES_3,    KC_PEQL,                   KC_VOLD, KC_VOLU, KC_MUTE, KC_BRIU, KC_BRID, KC_DEL,
  //|--------+--------+--------+--------+--------+--------|                 |--------+--------+--------+--------+--------+--------|
    KC_PAST, KC_PSLS,  ES_4,    ES_5,    ES_6,    ES_LCBR,                   KC_LEFT, KC_DOWN, KC_UP,   KC_RIGHT,XXXXXXX, KC_PSCR,
  //|--------+--------+--------+--------+--------+--------|                 |--------+--------+--------+--------+--------+--------|
    ES_LABK, KC_PERC,  ES_7,    ES_8,    ES_9,    ES_0,                      XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,
  //|--------+--------+--------+--------+--------+--------+------|  |-------+--------+--------+--------+--------+--------+--------|
                                         KC_LGUI,  MO(4), KC_SPC,   KC_ENT,  _______, KC_RSFT
                                      //`------------------------'  `--------------------------'
  ),

  [3] = LAYOUT_split_3x6_3(
  //,-----------------------------------------------------.                ,-----------------------------------------------------.
    XXXXXXX, XXXXXXX, XXXXXXX, ES_CIRC, KC_TILD, XXXXXXX,                   ES_DQUO, KC_BSLS, KC_LPRN, KC_PIPE, ES_IEXL, KC_BSPC,
  //|--------+--------+--------+--------+--------+--------|                |--------+--------+--------+--------+--------+--------|
    XXXXXXX, ES_TILD, ES_AT,   ES_GRV,  ES_DLR,  KC_HASH,                   ES_QUOT, KC_QUOT, KC_ASTR, ES_DIAE, ES_QUES, KC_CAPS,
  //|--------+--------+--------+--------+--------+--------|                |--------+--------+--------+--------+--------+--------|
    XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,                   ES_RCBR, ES_AMPR, ES_PIPE, ES_IQUE, ES_EXLM, XXXXXXX,
  //|--------+--------+--------+--------+--------+--------+------|  |------+--------+--------+--------+--------+--------+--------|
                                        KC_LGUI,   _______,  KC_SPC,   KC_ENT, MO(4), KC_RSFT
                                      //`------------------------'  `--------------------------'
  ),

  [4] = LAYOUT_split_3x6_3(
  //,-----------------------------------------------------.                 ,-----------------------------------------------------.
    QK_BOOT, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,                    XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,
  //|--------+--------+--------+--------+--------+--------|                 |--------+--------+--------+--------+--------+--------|
    RGB_TOG, RGB_HUI, RGB_SAI, RGB_VAI, XXXXXXX, XXXXXXX,                    XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,
  //|--------+--------+--------+--------+--------+--------|                 |--------+--------+--------+--------+--------+--------|
    RGB_MOD, RGB_HUD, RGB_SAD, RGB_VAD, XXXXXXX, XXXXXXX,                    XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,
  //|--------+--------+--------+--------+--------+--------+------|  |-------+--------+--------+--------+--------+--------+--------|
                                        KC_LGUI, _______,  KC_SPC,   KC_ENT, _______, XXXXXXX
                                      //`------------------------'  `--------------------------'
  )
};

#ifdef OLED_ENABLE
oled_rotation_t oled_init_user(oled_rotation_t rotation) {
  if (!is_keyboard_master()) {
    return OLED_ROTATION_180;  // flips the display 180 degrees if offhand
  }
  return rotation;
}

#define L_BASE 0
#define L_PROG 1
#define L_LOWER 2
#define L_RAISE 3
#define L_ADJUST 4

void oled_render_layer_state(void) {
    oled_write_P(PSTR("Layer: "), false);
    switch (get_highest_layer(layer_state)) {
        case L_BASE:
            oled_write_ln_P(PSTR("Human"), false);
            break;
        case L_PROG:
            oled_write_ln_P(PSTR("Developer"), false);
            break;
        case L_LOWER:
            oled_write_ln_P(PSTR("Numpad"), false);
            break;
        case L_RAISE:
            oled_write_ln_P(PSTR("Symbols"), false);
            break;
        default:
            oled_write_ln_P(PSTR("Adjust"), false);
            break;
    }
}


char keylog_str[24] = {};

const char code_to_name[60] = {
    ' ', ' ', ' ', ' ', 'a', 'b', 'c', 'd', 'e', 'f',
    'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
    'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
    '1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
    'R', 'E', 'B', 'T', '_', '-', '=', '[', ']', '\\',
    '#', ';', '\'', '`', ',', '.', '/', ' ', ' ', ' '};

void set_keylog(uint16_t keycode, keyrecord_t *record) {
  char name = ' ';
    if ((keycode >= QK_MOD_TAP && keycode <= QK_MOD_TAP_MAX) ||
        (keycode >= QK_LAYER_TAP && keycode <= QK_LAYER_TAP_MAX)) { keycode = keycode & 0xFF; }
  if (keycode < 60) {
    name = code_to_name[keycode];
  }

  // update keylog
  snprintf(keylog_str, sizeof(keylog_str), "%dx%d, k%2d : %c",
           record->event.key.row, record->event.key.col,
           keycode, name);
}

void oled_render_keylog(void) {
    oled_write(keylog_str, false);
}

void render_bootmagic_status(bool status) {
    /* Show Ctrl-Gui Swap options */
    static const char PROGMEM logo[][2][3] = {
        {{0x97, 0x98, 0}, {0xb7, 0xb8, 0}},
        {{0x95, 0x96, 0}, {0xb5, 0xb6, 0}},
    };
    if (status) {
        oled_write_ln_P(logo[0][0], false);
        oled_write_ln_P(logo[0][1], false);
    } else {
        oled_write_ln_P(logo[1][0], false);
        oled_write_ln_P(logo[1][1], false);
    }
}

static void oled_render_logos(void) {
    static const char PROGMEM corne_logo[] = {
        0,  0,192,224,240,240,240,240,240,240,224,224,192,192,128,128,  0,  0,  0,  4,  4,140,252,252,248,240,192,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0,  0, 15, 31, 63, 63,127,127,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,191, 31,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0,  0,  0,  0,  0, 14, 30, 60,124,124,253,253,253,253,253,253,255,255,255,255,255,255,255,255,255, 63, 14,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  4, 12, 28, 60, 62, 62, 62, 63, 63, 63, 63, 63, 63, 31, 31, 15,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    };
    static const char PROGMEM mask_logo[] = {
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  4, 12, 52,196,  4,  4,  4,  4,228, 52, 20, 12,132,196, 36,  4,  4,228, 60, 28,  4,  4,196,196,  4,  8, 16, 32, 64,128,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,254,  0,  0,  0, 31, 56,112, 96, 15, 24, 32,  0,  0,  3, 14, 12,  0,160, 64,  1,  3,254,192,128,  0,  0,129,254,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,192, 63,  0,  0,  0,240, 56, 28, 12,224, 48,  8,  0,  1,193,113, 49,  1, 11,  4,128,192,127,  7,  3,  1,  1,  3,255,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 32, 48, 44, 35, 32, 32, 32, 32, 39, 44, 40, 48, 35, 38, 40, 32, 32, 39, 60, 56, 32, 32, 35, 35, 33, 32, 16,  8,  4,  2,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    };
    static const char PROGMEM qmk_logo[] = {
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,128,128,240,128,240,128,128,240,128,128,240,128,240,128,128,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,148,148,148,255,255,255,119,119,119,119,119,119,119,111, 31,127,127,255,255,255,148,148,148,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 20, 20, 20,127,255,255,247,247,247,247,247,247,247,251,252,255,255,255,255,127, 20, 20, 20,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  7,  0,  7,  0,  0,  7,  0,  0,  7,  0,  7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    };
    static const char PROGMEM pengu_logo[] = {
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,128,128,192,192,192,192, 64, 64, 64, 64, 96, 96, 48,240,248,248,248,248,252,228,  4,180,180,244,232,232,240,224,224,192,128,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,252,254,  3,  1, 12, 12,108, 96,240,252,240,  0,  0,  0,  0,  0, 15, 31, 63, 31, 15,  7,  1,  0, 25, 59, 63, 63,127,255,255,127, 63, 31,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  7, 15, 24, 48, 99, 99, 99, 96,112,115,248,248,248,  0,240,252,254,255,252,240,  0,192,192,216,248,248,248,248,252,255,255,248,248,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  3,  7, 15, 15, 15, 15, 19, 33, 32, 38, 46, 47, 47, 47, 47, 47, 47, 63, 15,  7,  3,  0,  0,  0,
    };
    static const char PROGMEM logos[] = {
        0,  0,192,224,240,240,240,240,240,240,224,224,192,192,128,128,  0,  0,  0,  4,  4,140,252,252,248,240,192,  0,  4, 12, 52,196,  4,  4,  4,  4,228, 52, 20, 12,132,196, 36,  4,  4,228, 60, 28,  4,  4,196,196,  4,  8, 16, 32, 64,128,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,128,128,240,128,240,128,128,240,128,128,240,128,240,128,128,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,128,128,192,192,192,192, 64, 64, 64, 64, 96, 96, 48,240,248,248,248,248,252,228,  4,180,180,244,232,232,240,224,224,192,128,  0,  0,
        0,  0, 15, 31, 63, 63,127,127,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,191, 31,  0,  0,  0,  0,  1,254,  0,  0,  0, 31, 56,112, 96, 15, 24, 32,  0,  0,  3, 14, 12,  0,160, 64,  1,  3,254,192,128,  0,  0,129,254,  0,  0,  0,  0,  0,  0,148,148,148,255,255,255,119,119,119,119,119,119,119,111, 31,127,127,255,255,255,148,148,148,  0,  0,  0,252,254,  3,  1, 12, 12,108, 96,240,252,240,  0,  0,  0,  0,  0, 15, 31, 63, 31, 15,  7,  1,  0, 25, 59, 63, 63,127,255,255,127, 63, 31,  0,  0,
        0,  0,  0,  0,  0, 14, 30, 60,124,124,253,253,253,253,253,253,255,255,255,255,255,255,255,255,255, 63, 14,  0,  0,  0,  0,192, 63,  0,  0,  0,240, 56, 28, 12,224, 48,  8,  0,  1,193,113, 49,  1, 11,  4,128,192,127,  7,  3,  1,  1,  3,255,  0,  0,  0,  0,  0,  0, 20, 20, 20,127,255,255,247,247,247,247,247,247,247,251,252,255,255,255,255,127, 20, 20, 20,  0,  0,  0,  7, 15, 24, 48, 99, 99, 99, 96,112,115,248,248,248,  0,240,252,254,255,252,240,  0,192,192,216,248,248,248,248,252,255,255,248,248,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  4, 12, 28, 60, 62, 62, 62, 63, 63, 63, 63, 63, 63, 31, 31, 15,  0,  0, 32, 48, 44, 35, 32, 32, 32, 32, 39, 44, 40, 48, 35, 38, 40, 32, 32, 39, 60, 56, 32, 32, 35, 35, 33, 32, 16,  8,  4,  2,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  7,  0,  7,  0,  0,  7,  0,  0,  7,  0,  7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  3,  7, 15, 15, 15, 15, 19, 33, 32, 38, 46, 47, 47, 47, 47, 47, 47, 63, 15,  7,  3,  0,  0,  0,
    };

    switch (get_highest_layer(layer_state)) {
        case L_BASE:
            oled_write_raw_P(corne_logo, sizeof(corne_logo));
            break;
        case L_PROG:
            oled_write_raw_P(mask_logo, sizeof(mask_logo));
            break;
        case L_LOWER:
            oled_write_raw_P(qmk_logo, sizeof(qmk_logo));
            break;
        case L_RAISE:
            oled_write_raw_P(pengu_logo, sizeof(pengu_logo));
            break;
        default:
            oled_write_raw_P(logos, sizeof(logos));
            break;
    }
}

bool oled_task_user(void) {
    if (is_keyboard_master()) {
        oled_render_layer_state();
        oled_render_keylog();
    } else {
        oled_render_logos();
    }
    return false;
}

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    set_keylog(keycode, record);
  }
  return true;
}
#endif // OLED_DRIVER_ENABLE
