GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�C      U      -��`�0��x�5�[P   res://.import/joystick_base_outline.png-882cf40262799a64a83eed8600465076.stex    	      0
      �5���p��њ$G�3D   res://.import/joystick_tip.png-0e2f68bc47c4b21ae53ab8dd63181a14.stexP      �      M���:a�ݳ��K�fL   res://.import/joystick_tip_arrows.png-78d5068e2886cdbe04aba82cc81e9f31.stex 0      \      ��:²��y�8��Xo   res://Game.tscn �      �      pܹ�<B8���A�A�<�P   res://addons/virtual_joystick/joystick/textures/joystick_base_outline.png.importP      �      �d^,(5,���=3��H   res://addons/virtual_joystick/joystick/textures/joystick_tip.png.import @      �      B��{R���>BA^�P   res://addons/virtual_joystick/joystick/textures/joystick_tip_arrows.png.import  �       �      e*�d��#��z�z@   res://addons/virtual_joystick/joystick/virtual_joystick.gd.remap`S      L       H�r2����um0e�<   res://addons/virtual_joystick/joystick/virtual_joystick.gdc �#      o      �M�@��Y����c�<   res://addons/virtual_joystick/joystick/virtual_joystick.tscn 8      �      ����J����݇U4   res://addons/virtual_joystick/test/player.gd.remap  �S      >       ���S*��^=m�.�f&0   res://addons/virtual_joystick/test/player.gdc   �=      �      �V&!iǻ����[>��,   res://addons/virtual_joystick/test/test.tscn�?            B��W�����e��K�M�   res://default_env.tres  �B      �       um�`�N��<*ỳ�8   res://icon.png  �S      �      G1?��z�c��vN��   res://icon.png.import   �P      �      �����%��(#AB�   res://project.binary�`      D      z�oQ/{.^,�=f�[gd_scene load_steps=4 format=2]

[ext_resource path="res://addons/virtual_joystick/joystick/virtual_joystick.tscn" type="PackedScene" id=1]
[ext_resource path="res://addons/virtual_joystick/test/player.gd" type="Script" id=2]
[ext_resource path="res://icon.png" type="Texture" id=3]

[node name="Node2D" type="Node2D"]

[node name="UI" type="CanvasLayer" parent="."]

[node name="Virtual joystick" parent="UI" instance=ExtResource( 1 )]
deadzone_size = 0.0
clampzone_size = 10.0
joystick_mode = 1

[node name="Player" type="Sprite" parent="."]
position = Vector2( 512, 300 )
scale = Vector2( 2, 2 )
texture = ExtResource( 3 )
script = ExtResource( 2 )
   GDST�   �            
  WEBPRIFF
  WEBPVP8L�	  /��1"L�/ݝ���?��-��'h����mm��f۶%@���� a��Y�FDt��Z]Q�U�J���/��ܶ�$�	��]3S�9*���,u�8?g�(��	sr��h1��ç�ԏ��,T�{�,vΡt�x{���\���/.L���ld�R��{E�z�/Tݵ�w\�v�m���k�c.Y�i0�t�׈�P�ZærN=�/�.�M�\/f������1;�c�U�@$�S���Q����4�"�y��<�z����w�ɰ���r�j����C~w0]�Z�)��m���{_7T�n��9�����y������*�E�?��6
g��Z6��g�J���L-ͬ��������{�(� �Rc��|P_�p/o�vz�\���Yס�ٱm�p-G�U{�TV�OFu#�/I�.��k�v�c{��[+��p'�6��r嚻��!��JӖwVWʸ�ۤ!'�n��C��Z;6j�p`w9��G��2*0w)�a\��͝����3Ws���H=�s�F���F��OpZߔ�grnob|��J�*iL�?�Ui滉��Se�������A�Z9ۥ,�(g��Q�i�F�R�w�C�i��:����ƇY��7��~�4L�X�`V&�������B�
�����:��e���VP�X�E�^�r䕋~jW�����W��`W=�|��\T���l�V3چ"�]w1K�b���C�G?�aix��F���E@Y���bX��H+D�R|^��v�������P +ja5'�R׶�T���8ǦH|�����ɵ�[8)�!��"�9
BY��&)D�����ĞWF|)=���H=k��o�I���[�Ŗ����a���;)JL��{���jˀ��S��b��l�iH&聑���XP?�>�8�@��f,΅������\5�%V��D1�'�g�⿝��u`� [�cWO��k1�5`��d��4��bĝ�R�<]���K��+��m��ؑ���`>�#=%����ͭF!�y�J�`��l�\j�W<���f�����.����&&R2a�&b���R��A�1�7I	m��h�FIK#`���; m�I#���`�-'��5�x�R�xa �|�]<I�.��,S����P��r ��2F���g@KVZ�V�pRٔ2����|VY�%���N - �5�H˭��C��R�HPk�g��e�M Sy��u��)/��:ٔ4��j�|y���F]���Q��J��8DM������ 1c@����l�=���`�@_Q�y,"t�JL}Ā��\��4�А��Ib�����ǔ�����#�������� �H֠���Kb��`+1[���$1g�-�`���P�G��t��/��`E������S^��#|H�%t�jt�	A�?�1 ����	� ,�e	��'%+�N*�i��b�-4��_Y�D�_$dP���p�$Ż ^���YR���>��A�gݓ�; m�I#��h '�u(l�J��`�@�Rr̀1����|chn"�gY,%1 �
�ᕁ:ِ.�x͖)K��*#j}j�[�eUi���IH�x�IG�hIwِ,�P�b�jD��C,�c��i%B��bq<*3�A� �10(���e�d�ŀ�3ԇ2"v*2��!���d����D2������NWِ(�NV��q8[�$O��b��Q��d��~�_�=<�=��b�>{f�-��Hmf�0�mY��b~!R��,�R�L��%�<�|-I?��iX%��>#})iP_��gk�c�[�8H�1d�V{osuMVs��j�g�j[�g�i�(�ӿ� �.G�_��/��O�`�_��,��?��AS�<�R6�C=��C�1)ߜ5^n_�*�l5��7�@�g=����j��6^�GU�}��>��E?3`+��v߮��E�}��!���!�������\|��N}�3�ʕ�J5e.��׾2��+t�[0�ڝQV��i�>�ʤo���f��b���a�IDE��0�PJ�o�F���N�����~s�}�Y�#�˴�~����g���������w6͚xȸ�I��6�+`��r��3;u��k~N��Y\A㠻�3�m7V��:ؤ�HA�S��M��;��X�Q�.9d��c�6�C���F�Y��#7.�ݒ�z������f}u��d�,���!8�B�є�:��4����gYh�DFyӵr��钹ݰ���k*��u�l�m�蜺�����{� +�?�Dc�a+��
��Q�H�J��٣R�=/S�ӬA8�4�[���k�RŢZ��ڷ��P�[�n��6X�s�>PUi��a�9�������;��s���M�m�	��i�k��=v:�f��o^w:O��x�=�]o2�N���A��xFW	�zΙ����:�a~q�����*e���A�Z#������W��M2��j���c��&WeC��Ǳ������\�/P��+)�d�oZ��B"��_�\V�~׷j˫.����q~�Q��G�b6�O���\��[remap]

importer="texture"
type="StreamTexture"
path="res://.import/joystick_base_outline.png-882cf40262799a64a83eed8600465076.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://addons/virtual_joystick/joystick/textures/joystick_base_outline.png"
dest_files=[ "res://.import/joystick_base_outline.png-882cf40262799a64a83eed8600465076.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDSTd   d            �  WEBPRIFF�  WEBPVP8L�  /c�ס�m��I����m��ڎ!������p8��W4|B� �M"96�m�ŵ�pػ���/[��ɕ���Cr�H�Dۨ��4��N�4���b{Jr�I��������(Hb�%]���6~�V��}�Z���
r��C��D%*J9j�+T�*&u�*N�jH q���GM��D��@m)>��\7B���b[�:��,�-�&�=�+��sd��YlC/�H�Ҍx��oşȑMr��d��*�= ��P!������%��]�S���#�셇(@��	d<݇@&D��Mr*�*�#۬$O�_!�Ăa�Ye�M�u�uޮ5>2��Ü��Õ� ��>@��`�� �/�!�ѻ	>&&�,LnM�=���� �Mp����MP��N&8oM��xOL0}7��e���� k�6 c�& 6. �ؿ���/����ܽ>�Հ����ꬒ�ʮ���5|ΞD����"�["�b Yw��V]j��-L G��]�X������� d��,���y���;�$�ŧ�~�G����M�bM�Z2ٛ8Vg������ָ̧�E�_���h_�K`٧֪h��e ������9{�ڷ�}���ݥ��b�b����Z�),<�+U��H���g�
�̖]����D�Ȧ� w�ɛ�7\����4ܝ�ګ�Hλp�1Ptu    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/joystick_tip.png-0e2f68bc47c4b21ae53ab8dd63181a14.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://addons/virtual_joystick/joystick/textures/joystick_tip.png"
dest_files=[ "res://.import/joystick_tip.png-0e2f68bc47c4b21ae53ab8dd63181a14.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDSTd   d            @  WEBPRIFF4  WEBPVP8L(  /c�Uk�U��L���$�DY�����,WF�. �$#K����9�������G�ݶ���{H�6�;qj��8�?����u�ڈ�ڶ�ֱ�ˑ�6�D�ә�45(�jF������U �XO���a�Pj��s��J'����㤕LkY����#R��V��Yd��-:�[���}3�AM�M�w	7���1�d�K��ϧ���O�NCA�T������e��Bq�	&_K�a���$�d�8�\���⠐zR�.r>������"�IT"���\I�p%�A.��zf�xeH�Lao6�d�_�L&�?�I���x���t���N����ʐ��B�� �d��vE���B!��+��!�"� r /�l<�@S"�.��� �Ȭ.1K���B#�@:VT�Q�ᢎ	Д�0nV���2�NU�_јT	�0|4���6*m#21l�]��fx�A���F�M��ϔ�c�q�p���ut�����|%"����I?����\$�g|�H(V��ϲ�wX�;lg�9���������U|�����PXR��b>�M�p�²
�[��&�������W��7h�mx�C(��p���*���
˛�z~!�
��9��8
g�<��W8��H
��
���5<Ukx�:v�K��5�/^�]�9��o�=���x��
b��5K��O���s����q1�HD�������>Ə��}���'��HM#��L�̑�H�Gft����
H�6,�rpT2)$R՘T��*�I���U+�ሼR��`u��$�np�2�
�\O��T	�ɴ����@��A���Kd�G9��A��z�/�"d�(�;A�"��6����L�*������19=�pS��	�O79�1]�y��x�tͮ��m}�}n!���T�;�+J��u
��O3<��a�E._p��
�oe�&Fo'��S<H�'�w�Ԑ���X4YIQ�#���Nx�a�#�FUKPe���=�2��)2�:Iu�/W�R؎CF���m.M��]^���im݇�t��,��D�.��DW�ͣ�U�4c[n!k1�B/Yu ���R!��b�:mE    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/joystick_tip_arrows.png-78d5068e2886cdbe04aba82cc81e9f31.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://addons/virtual_joystick/joystick/textures/joystick_tip_arrows.png"
dest_files=[ "res://.import/joystick_tip_arrows.png-78d5068e2886cdbe04aba82cc81e9f31.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDSC   L      �   /     ��������������ݶ   ������ڶ   ������������Ķ��   ���϶���   ������������Ӷ��   �������������Ӷ�   �����������Ӷ���   ����򶶶   ��������   ������������Ӷ��   �������������Ӷ�   �����嶶   ���������������ﶶ��   ��������������Ӷ   ����������������Ŷ��   ����������¶   �����������¶���   ��������ƶ��   ����������ض   �������Ҷ���   ���������Ҷ�   ������¶   ��������   ���������¶�   �����������ζ���   ����Ӷ��   ���Ӷ���   ���ƶ���   ��ƶ   �����������Ŷ���   ��������Ӷ��$   �������������������������������Ŷ���   ��������Ӷ��   ���������������������ض�   ������������ض��   ��������������������ض��   �������������Ķ�   �������Ӷ���   �����϶�   �嶶   ����������������������¶   ���Ӷ���   �����¶�   ����¶��   ���������¶�   ��������������������޶��   ������Ҷ    �����������������������������׶�   �������ض���   ��������������������Ӷ��   ���������Ӷ�   ����ζ��   ���������������ݶ���   �������Ӷ���   �������������������Ҷ���   �����¶�   �������������������Ѷ���   �����������ض���   �������������������ض���   ����������������¶��   ��������ƶ��   ����¶��   ζ��   ϶��   �����Ķ�   �����Ķ�   �������������Ҷ�   �������������ض�   ������Ҷ   ���������Ҷ�   ��������������������Ŷ��   ����¶��   �����������Ŷ���   ����������������Ҷ��   �������������Ӷ�   ���������������������Ҷ�          �            
      �     K               ui_left       ui_right      ui_up         ui_down                                                   	      
         	      
                     +      ,      -      >      ?      @      A      I      J      V      W      X      Y      a      b      n      o      p      w       x   !   y   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >     ?     @     A     B     C     D     E   %  F   4  G   8  H   9  I   D  J   J  K   P  L   ^  M   u  N   }  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `     a     b     c   ?  d   d  e   i  f   j  g   u  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z     {     |     }     ~          �     �     �   +  �   4  �   ;  �   C  �   N  �   W  �   ^  �   f  �   r  �   {  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   &  �   -  �   2YY3�  YYYYYYY8P�  Q;�  V�  T�  YYY8P�  RR�  R�  Q;�  V�  �  YYY8P�  RR�  R�  Q;�  V�  �  YYYY>�  N�  R�  OYY8P�  Q;�	  V�  T�  YYYY>�
  N�  R�  OYY8P�
  Q;�  V�
  T�  YYY8;�  V�  YYY8;�  V�  Y8;�  V�  Y8;�  V�	  Y8;�  V�
  YYYYY;�  V�  9R�  YY0�  PQX�  V�  .�  YYY;�  V�  T�  9R�  YY0�  PQX�  V�  .�  YYYY;�  V�  �  YY5;�  VW�  Y5;�  VW�  �  YY5;�  �  T�  �  T�  PQT�   PQ�  YY5;�!  V�  �  T�"  Y5;�#  V�  �  T�"  YY5;�$  V�  �  T�%  YYYY0�&  PQX=V�  &�'  T�(  PQ�  �
  T�  V�  �)  PQYY0�*  P�+  V�,  QX=V�  &�+  4�-  V�  &�+  T�.  V�  &�/  P�+  T�0  Q�  �  V�  &�	  �  T�  P�	  �  T�  �1  P�+  T�0  QQV�  &�	  �  T�  V�  �2  P�+  T�0  Q�  �  �+  T�3  �  �  T�%  �  �  �4  P�+  T�0  Q�  �5  PQT�6  PQ�  '�+  T�3  �  V�  �7  PQ�  �5  PQT�6  PQ�  '�+  4�8  V�  &�+  T�3  �  V�  �4  P�+  T�0  Q�  �5  PQT�6  PQYY0�2  P�9  V�  QX=V�  �  T�:  �9  �  T�;  �  PQT�   PQYY0�<  P�9  V�  QX=V�  �  T�:  �9  �  T�;  �  T�  PQT�   PQYY0�/  P�=  V�  QX�  V�  ;�>  V�  �=  T�>  �:  T�>  �=  T�>  
�:  T�>  P�  T�>  �  PQT�   PQT�>  Q�  ;�?  V�  �=  T�?  �:  T�?  �=  T�?  
�:  T�?  P�  T�?  �  PQT�   PQT�?  Q�  .�>  �?  YY0�1  P�=  V�  QX�  V�  ;�@  V�  �  T�:  �  �  ;�A  V�  �=  �@  �  &�A  T�B  PQ
�  T�>  �  T�>  V�  .�  �  (V�  .�  YY0�4  P�C  V�  QX=V�  ;�@  V�  �  T�:  �  �  ;�A  V�  �C  �@  �  �A  �A  T�D  P�  Q�  �  �<  P�@  �A  Q�  �  &�A  T�B  PQ�  �  V�  �  �  �  �  P�A  P�A  T�E  PQ�  QQP�  �  Q�  (V�  �  �  �  �  �  T�  �  �  &�  V�  �F  PQYY0�F  PQV�  &�  T�>  	V�  �G  T�H  P�  R�  T�>  Q�  '�G  T�I  P�  QV�  �G  T�J  P�  Q�  &�  T�>  V�  �G  T�H  P�  R�  T�>  Q�  '�G  T�I  P�  QV�  �G  T�J  P�  Q�  &�  T�?  	V�  �G  T�H  P�  R�  T�?  Q�  '�G  T�I  P�  QV�  �G  T�J  P�  Q�  &�  T�?  V�  �G  T�H  P�  R�  T�?  Q�  '�G  T�I  P�  QV�  �G  T�J  P�  QYY0�7  PQV�  �  �  �  �  �  T�  �  �  �  �  �  T�%  �$  �  �  T�"  �!  �  �  T�"  �#  �  &�  V�  &�G  T�I  P�  Q�G  T�K  P�  QV�  �G  T�J  P�  Q�  &�G  T�I  P�  Q�G  T�K  P�  QV�  �G  T�J  P�  Q�  &�G  T�I  P�  Q�G  T�K  P�  QV�  �G  T�J  P�  Q�  &�G  T�I  P�  Q�G  T�K  P�  QV�  �G  T�J  P�  QY` [gd_scene load_steps=4 format=2]

[ext_resource path="res://addons/virtual_joystick/joystick/textures/joystick_base_outline.png" type="Texture" id=1]
[ext_resource path="res://addons/virtual_joystick/joystick/textures/joystick_tip_arrows.png" type="Texture" id=2]
[ext_resource path="res://addons/virtual_joystick/joystick/virtual_joystick.gd" type="Script" id=3]

[node name="Virtual joystick" type="Control"]
modulate = Color( 1, 1, 1, 0.509804 )
anchor_top = 1.0
anchor_bottom = 1.0
margin_left = 50.0
margin_top = -250.0
margin_right = 250.0
margin_bottom = -50.0
script = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Base" type="TextureRect" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -100.0
margin_top = -100.0
margin_right = 100.0
margin_bottom = 100.0
grow_horizontal = 2
grow_vertical = 2
rect_pivot_offset = Vector2( 100, 100 )
size_flags_horizontal = 4
size_flags_vertical = 4
texture = ExtResource( 1 )
stretch_mode = 6
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Tip" type="TextureRect" parent="Base"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -50.0
margin_top = -50.0
margin_right = 50.0
margin_bottom = 50.0
grow_horizontal = 2
grow_vertical = 2
rect_pivot_offset = Vector2( 50, 50 )
size_flags_horizontal = 4
size_flags_vertical = 4
texture = ExtResource( 2 )
stretch_mode = 6
__meta__ = {
"_edit_use_anchors_": false
}
         GDSC            E      �����Ӷ�   ����Ҷ��   �������Ŷ���   ����׶��   ���Ӷ���   ��������   ζ��   ����¶��   �������Ŷ���   ϶��   �������ض���   �         ui_left       ui_right      ui_up         ui_down                                                  !   	   .   
   ;      C      3YY8;�  V�  YY0�  P�  V�  QX=V�  �  �  ;�  V�  T�  �  �  T�  �  T�  P�  R�  Q�  �  T�	  �  T�  P�  R�  Q�  �
  �  �  �  Y`         [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://addons/virtual_joystick/joystick/virtual_joystick.tscn" type="PackedScene" id=2]
[ext_resource path="res://addons/virtual_joystick/test/player.gd" type="Script" id=3]

[node name="Node" type="Node"]

[node name="UI" type="CanvasLayer" parent="."]

[node name="Virtual joystick" parent="UI" instance=ExtResource( 2 )]

[node name="Virtual joystick2" parent="UI" instance=ExtResource( 2 )]
anchor_left = 1.0
anchor_right = 1.0
margin_left = -250.0
margin_right = -50.0
joystick_mode = 1
use_input_actions = false

[node name="Icon" type="Sprite" parent="."]
position = Vector2( 512, 300 )
scale = Vector2( 2, 2 )
texture = ExtResource( 1 )
script = ExtResource( 3 )
   [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://addons/virtual_joystick/joystick/virtual_joystick.gdc"
    [remap]

path="res://addons/virtual_joystick/test/player.gdc"
  �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class         VirtualJoystick       language      GDScript      path   :   res://addons/virtual_joystick/joystick/virtual_joystick.gd        base      Control    _global_script_class_icons(               VirtualJoystick           application/config/name         2022Game   application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png  /   input_devices/pointing/emulate_touch_from_mouse         )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres              