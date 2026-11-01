package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class bal {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f11176a;

    static {
        int[] iArr = new int[cqf.values().length];
        f11176a = iArr;
        try {
            iArr[cqf.NOP.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f11176a[cqf.MOVE_RESULT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f11176a[cqf.CONST.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f11176a[cqf.CONST_WIDE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f11176a[cqf.CONST_STRING.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f11176a[cqf.CONST_CLASS.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f11176a[cqf.MOVE.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f11176a[cqf.MOVE_MULTI.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f11176a[cqf.MOVE_WIDE.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f11176a[cqf.MOVE_OBJECT.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f11176a[cqf.ADD_INT.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f11176a[cqf.ADD_DOUBLE.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f11176a[cqf.ADD_FLOAT.ordinal()] = 13;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f11176a[cqf.ADD_LONG.ordinal()] = 14;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f11176a[cqf.ADD_INT_LIT.ordinal()] = 15;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f11176a[cqf.SUB_INT.ordinal()] = 16;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            f11176a[cqf.RSUB_INT.ordinal()] = 17;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            f11176a[cqf.SUB_LONG.ordinal()] = 18;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            f11176a[cqf.SUB_FLOAT.ordinal()] = 19;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            f11176a[cqf.SUB_DOUBLE.ordinal()] = 20;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            f11176a[cqf.MUL_INT.ordinal()] = 21;
        } catch (NoSuchFieldError unused21) {
        }
        try {
            f11176a[cqf.MUL_DOUBLE.ordinal()] = 22;
        } catch (NoSuchFieldError unused22) {
        }
        try {
            f11176a[cqf.MUL_FLOAT.ordinal()] = 23;
        } catch (NoSuchFieldError unused23) {
        }
        try {
            f11176a[cqf.MUL_LONG.ordinal()] = 24;
        } catch (NoSuchFieldError unused24) {
        }
        try {
            f11176a[cqf.MUL_INT_LIT.ordinal()] = 25;
        } catch (NoSuchFieldError unused25) {
        }
        try {
            f11176a[cqf.DIV_INT.ordinal()] = 26;
        } catch (NoSuchFieldError unused26) {
        }
        try {
            f11176a[cqf.REM_INT.ordinal()] = 27;
        } catch (NoSuchFieldError unused27) {
        }
        try {
            f11176a[cqf.REM_LONG.ordinal()] = 28;
        } catch (NoSuchFieldError unused28) {
        }
        try {
            f11176a[cqf.REM_FLOAT.ordinal()] = 29;
        } catch (NoSuchFieldError unused29) {
        }
        try {
            f11176a[cqf.REM_DOUBLE.ordinal()] = 30;
        } catch (NoSuchFieldError unused30) {
        }
        try {
            f11176a[cqf.DIV_DOUBLE.ordinal()] = 31;
        } catch (NoSuchFieldError unused31) {
        }
        try {
            f11176a[cqf.DIV_FLOAT.ordinal()] = 32;
        } catch (NoSuchFieldError unused32) {
        }
        try {
            f11176a[cqf.DIV_LONG.ordinal()] = 33;
        } catch (NoSuchFieldError unused33) {
        }
        try {
            f11176a[cqf.DIV_INT_LIT.ordinal()] = 34;
        } catch (NoSuchFieldError unused34) {
        }
        try {
            f11176a[cqf.REM_INT_LIT.ordinal()] = 35;
        } catch (NoSuchFieldError unused35) {
        }
        try {
            f11176a[cqf.AND_INT.ordinal()] = 36;
        } catch (NoSuchFieldError unused36) {
        }
        try {
            f11176a[cqf.AND_INT_LIT.ordinal()] = 37;
        } catch (NoSuchFieldError unused37) {
        }
        try {
            f11176a[cqf.XOR_INT_LIT.ordinal()] = 38;
        } catch (NoSuchFieldError unused38) {
        }
        try {
            f11176a[cqf.AND_LONG.ordinal()] = 39;
        } catch (NoSuchFieldError unused39) {
        }
        try {
            f11176a[cqf.OR_INT.ordinal()] = 40;
        } catch (NoSuchFieldError unused40) {
        }
        try {
            f11176a[cqf.OR_INT_LIT.ordinal()] = 41;
        } catch (NoSuchFieldError unused41) {
        }
        try {
            f11176a[cqf.XOR_INT.ordinal()] = 42;
        } catch (NoSuchFieldError unused42) {
        }
        try {
            f11176a[cqf.OR_LONG.ordinal()] = 43;
        } catch (NoSuchFieldError unused43) {
        }
        try {
            f11176a[cqf.XOR_LONG.ordinal()] = 44;
        } catch (NoSuchFieldError unused44) {
        }
        try {
            f11176a[cqf.USHR_INT.ordinal()] = 45;
        } catch (NoSuchFieldError unused45) {
        }
        try {
            f11176a[cqf.USHR_LONG.ordinal()] = 46;
        } catch (NoSuchFieldError unused46) {
        }
        try {
            f11176a[cqf.SHL_INT.ordinal()] = 47;
        } catch (NoSuchFieldError unused47) {
        }
        try {
            f11176a[cqf.SHL_LONG.ordinal()] = 48;
        } catch (NoSuchFieldError unused48) {
        }
        try {
            f11176a[cqf.SHR_INT.ordinal()] = 49;
        } catch (NoSuchFieldError unused49) {
        }
        try {
            f11176a[cqf.SHR_LONG.ordinal()] = 50;
        } catch (NoSuchFieldError unused50) {
        }
        try {
            f11176a[cqf.SHL_INT_LIT.ordinal()] = 51;
        } catch (NoSuchFieldError unused51) {
        }
        try {
            f11176a[cqf.SHR_INT_LIT.ordinal()] = 52;
        } catch (NoSuchFieldError unused52) {
        }
        try {
            f11176a[cqf.USHR_INT_LIT.ordinal()] = 53;
        } catch (NoSuchFieldError unused53) {
        }
        try {
            f11176a[cqf.NEG_INT.ordinal()] = 54;
        } catch (NoSuchFieldError unused54) {
        }
        try {
            f11176a[cqf.NEG_LONG.ordinal()] = 55;
        } catch (NoSuchFieldError unused55) {
        }
        try {
            f11176a[cqf.NEG_FLOAT.ordinal()] = 56;
        } catch (NoSuchFieldError unused56) {
        }
        try {
            f11176a[cqf.NEG_DOUBLE.ordinal()] = 57;
        } catch (NoSuchFieldError unused57) {
        }
        try {
            f11176a[cqf.NOT_INT.ordinal()] = 58;
        } catch (NoSuchFieldError unused58) {
        }
        try {
            f11176a[cqf.NOT_LONG.ordinal()] = 59;
        } catch (NoSuchFieldError unused59) {
        }
        try {
            f11176a[cqf.INT_TO_BYTE.ordinal()] = 60;
        } catch (NoSuchFieldError unused60) {
        }
        try {
            f11176a[cqf.INT_TO_CHAR.ordinal()] = 61;
        } catch (NoSuchFieldError unused61) {
        }
        try {
            f11176a[cqf.INT_TO_SHORT.ordinal()] = 62;
        } catch (NoSuchFieldError unused62) {
        }
        try {
            f11176a[cqf.INT_TO_FLOAT.ordinal()] = 63;
        } catch (NoSuchFieldError unused63) {
        }
        try {
            f11176a[cqf.INT_TO_DOUBLE.ordinal()] = 64;
        } catch (NoSuchFieldError unused64) {
        }
        try {
            f11176a[cqf.INT_TO_LONG.ordinal()] = 65;
        } catch (NoSuchFieldError unused65) {
        }
        try {
            f11176a[cqf.FLOAT_TO_INT.ordinal()] = 66;
        } catch (NoSuchFieldError unused66) {
        }
        try {
            f11176a[cqf.FLOAT_TO_DOUBLE.ordinal()] = 67;
        } catch (NoSuchFieldError unused67) {
        }
        try {
            f11176a[cqf.FLOAT_TO_LONG.ordinal()] = 68;
        } catch (NoSuchFieldError unused68) {
        }
        try {
            f11176a[cqf.DOUBLE_TO_INT.ordinal()] = 69;
        } catch (NoSuchFieldError unused69) {
        }
        try {
            f11176a[cqf.DOUBLE_TO_FLOAT.ordinal()] = 70;
        } catch (NoSuchFieldError unused70) {
        }
        try {
            f11176a[cqf.DOUBLE_TO_LONG.ordinal()] = 71;
        } catch (NoSuchFieldError unused71) {
        }
        try {
            f11176a[cqf.LONG_TO_INT.ordinal()] = 72;
        } catch (NoSuchFieldError unused72) {
        }
        try {
            f11176a[cqf.LONG_TO_FLOAT.ordinal()] = 73;
        } catch (NoSuchFieldError unused73) {
        }
        try {
            f11176a[cqf.LONG_TO_DOUBLE.ordinal()] = 74;
        } catch (NoSuchFieldError unused74) {
        }
        try {
            f11176a[cqf.IF_EQ.ordinal()] = 75;
        } catch (NoSuchFieldError unused75) {
        }
        try {
            f11176a[cqf.IF_EQZ.ordinal()] = 76;
        } catch (NoSuchFieldError unused76) {
        }
        try {
            f11176a[cqf.IF_NE.ordinal()] = 77;
        } catch (NoSuchFieldError unused77) {
        }
        try {
            f11176a[cqf.IF_NEZ.ordinal()] = 78;
        } catch (NoSuchFieldError unused78) {
        }
        try {
            f11176a[cqf.IF_GT.ordinal()] = 79;
        } catch (NoSuchFieldError unused79) {
        }
        try {
            f11176a[cqf.IF_GTZ.ordinal()] = 80;
        } catch (NoSuchFieldError unused80) {
        }
        try {
            f11176a[cqf.IF_GE.ordinal()] = 81;
        } catch (NoSuchFieldError unused81) {
        }
        try {
            f11176a[cqf.IF_GEZ.ordinal()] = 82;
        } catch (NoSuchFieldError unused82) {
        }
        try {
            f11176a[cqf.IF_LT.ordinal()] = 83;
        } catch (NoSuchFieldError unused83) {
        }
        try {
            f11176a[cqf.IF_LTZ.ordinal()] = 84;
        } catch (NoSuchFieldError unused84) {
        }
        try {
            f11176a[cqf.IF_LE.ordinal()] = 85;
        } catch (NoSuchFieldError unused85) {
        }
        try {
            f11176a[cqf.IF_LEZ.ordinal()] = 86;
        } catch (NoSuchFieldError unused86) {
        }
        try {
            f11176a[cqf.CMP_LONG.ordinal()] = 87;
        } catch (NoSuchFieldError unused87) {
        }
        try {
            f11176a[cqf.CMPL_FLOAT.ordinal()] = 88;
        } catch (NoSuchFieldError unused88) {
        }
        try {
            f11176a[cqf.CMPL_DOUBLE.ordinal()] = 89;
        } catch (NoSuchFieldError unused89) {
        }
        try {
            f11176a[cqf.CMPG_FLOAT.ordinal()] = 90;
        } catch (NoSuchFieldError unused90) {
        }
        try {
            f11176a[cqf.CMPG_DOUBLE.ordinal()] = 91;
        } catch (NoSuchFieldError unused91) {
        }
        try {
            f11176a[cqf.GOTO.ordinal()] = 92;
        } catch (NoSuchFieldError unused92) {
        }
        try {
            f11176a[cqf.JAVA_JSR.ordinal()] = 93;
        } catch (NoSuchFieldError unused93) {
        }
        try {
            f11176a[cqf.JAVA_RET.ordinal()] = 94;
        } catch (NoSuchFieldError unused94) {
        }
        try {
            f11176a[cqf.THROW.ordinal()] = 95;
        } catch (NoSuchFieldError unused95) {
        }
        try {
            f11176a[cqf.MOVE_EXCEPTION.ordinal()] = 96;
        } catch (NoSuchFieldError unused96) {
        }
        try {
            f11176a[cqf.RETURN_VOID.ordinal()] = 97;
        } catch (NoSuchFieldError unused97) {
        }
        try {
            f11176a[cqf.RETURN.ordinal()] = 98;
        } catch (NoSuchFieldError unused98) {
        }
        try {
            f11176a[cqf.INSTANCE_OF.ordinal()] = 99;
        } catch (NoSuchFieldError unused99) {
        }
        try {
            f11176a[cqf.CHECK_CAST.ordinal()] = 100;
        } catch (NoSuchFieldError unused100) {
        }
        try {
            f11176a[cqf.IGET.ordinal()] = 101;
        } catch (NoSuchFieldError unused101) {
        }
        try {
            f11176a[cqf.IPUT.ordinal()] = 102;
        } catch (NoSuchFieldError unused102) {
        }
        try {
            f11176a[cqf.SGET.ordinal()] = 103;
        } catch (NoSuchFieldError unused103) {
        }
        try {
            f11176a[cqf.SPUT.ordinal()] = 104;
        } catch (NoSuchFieldError unused104) {
        }
        try {
            f11176a[cqf.ARRAY_LENGTH.ordinal()] = 105;
        } catch (NoSuchFieldError unused105) {
        }
        try {
            f11176a[cqf.AGET.ordinal()] = 106;
        } catch (NoSuchFieldError unused106) {
        }
        try {
            f11176a[cqf.AGET_BOOLEAN.ordinal()] = 107;
        } catch (NoSuchFieldError unused107) {
        }
        try {
            f11176a[cqf.AGET_BYTE.ordinal()] = 108;
        } catch (NoSuchFieldError unused108) {
        }
        try {
            f11176a[cqf.AGET_BYTE_BOOLEAN.ordinal()] = 109;
        } catch (NoSuchFieldError unused109) {
        }
        try {
            f11176a[cqf.AGET_CHAR.ordinal()] = 110;
        } catch (NoSuchFieldError unused110) {
        }
        try {
            f11176a[cqf.AGET_SHORT.ordinal()] = 111;
        } catch (NoSuchFieldError unused111) {
        }
        try {
            f11176a[cqf.AGET_WIDE.ordinal()] = 112;
        } catch (NoSuchFieldError unused112) {
        }
        try {
            f11176a[cqf.AGET_OBJECT.ordinal()] = 113;
        } catch (NoSuchFieldError unused113) {
        }
        try {
            f11176a[cqf.APUT.ordinal()] = 114;
        } catch (NoSuchFieldError unused114) {
        }
        try {
            f11176a[cqf.APUT_BOOLEAN.ordinal()] = 115;
        } catch (NoSuchFieldError unused115) {
        }
        try {
            f11176a[cqf.APUT_BYTE.ordinal()] = 116;
        } catch (NoSuchFieldError unused116) {
        }
        try {
            f11176a[cqf.APUT_BYTE_BOOLEAN.ordinal()] = 117;
        } catch (NoSuchFieldError unused117) {
        }
        try {
            f11176a[cqf.APUT_CHAR.ordinal()] = 118;
        } catch (NoSuchFieldError unused118) {
        }
        try {
            f11176a[cqf.APUT_SHORT.ordinal()] = 119;
        } catch (NoSuchFieldError unused119) {
        }
        try {
            f11176a[cqf.APUT_WIDE.ordinal()] = 120;
        } catch (NoSuchFieldError unused120) {
        }
        try {
            f11176a[cqf.APUT_OBJECT.ordinal()] = 121;
        } catch (NoSuchFieldError unused121) {
        }
        try {
            f11176a[cqf.INVOKE_STATIC.ordinal()] = 122;
        } catch (NoSuchFieldError unused122) {
        }
        try {
            f11176a[cqf.INVOKE_STATIC_RANGE.ordinal()] = 123;
        } catch (NoSuchFieldError unused123) {
        }
        try {
            f11176a[cqf.INVOKE_DIRECT.ordinal()] = 124;
        } catch (NoSuchFieldError unused124) {
        }
        try {
            f11176a[cqf.INVOKE_INTERFACE.ordinal()] = 125;
        } catch (NoSuchFieldError unused125) {
        }
        try {
            f11176a[cqf.INVOKE_SUPER.ordinal()] = 126;
        } catch (NoSuchFieldError unused126) {
        }
        try {
            f11176a[cqf.INVOKE_VIRTUAL.ordinal()] = 127;
        } catch (NoSuchFieldError unused127) {
        }
        try {
            f11176a[cqf.INVOKE_CUSTOM.ordinal()] = 128;
        } catch (NoSuchFieldError unused128) {
        }
        try {
            f11176a[cqf.INVOKE_SPECIAL.ordinal()] = 129;
        } catch (NoSuchFieldError unused129) {
        }
        try {
            f11176a[cqf.INVOKE_POLYMORPHIC.ordinal()] = 130;
        } catch (NoSuchFieldError unused130) {
        }
        try {
            f11176a[cqf.INVOKE_DIRECT_RANGE.ordinal()] = 131;
        } catch (NoSuchFieldError unused131) {
        }
        try {
            f11176a[cqf.INVOKE_INTERFACE_RANGE.ordinal()] = 132;
        } catch (NoSuchFieldError unused132) {
        }
        try {
            f11176a[cqf.INVOKE_SUPER_RANGE.ordinal()] = 133;
        } catch (NoSuchFieldError unused133) {
        }
        try {
            f11176a[cqf.INVOKE_VIRTUAL_RANGE.ordinal()] = 134;
        } catch (NoSuchFieldError unused134) {
        }
        try {
            f11176a[cqf.INVOKE_CUSTOM_RANGE.ordinal()] = 135;
        } catch (NoSuchFieldError unused135) {
        }
        try {
            f11176a[cqf.INVOKE_POLYMORPHIC_RANGE.ordinal()] = 136;
        } catch (NoSuchFieldError unused136) {
        }
        try {
            f11176a[cqf.NEW_INSTANCE.ordinal()] = 137;
        } catch (NoSuchFieldError unused137) {
        }
        try {
            f11176a[cqf.NEW_ARRAY.ordinal()] = 138;
        } catch (NoSuchFieldError unused138) {
        }
        try {
            f11176a[cqf.FILL_ARRAY_DATA.ordinal()] = 139;
        } catch (NoSuchFieldError unused139) {
        }
        try {
            f11176a[cqf.FILL_ARRAY_DATA_PAYLOAD.ordinal()] = 140;
        } catch (NoSuchFieldError unused140) {
        }
        try {
            f11176a[cqf.FILLED_NEW_ARRAY.ordinal()] = 141;
        } catch (NoSuchFieldError unused141) {
        }
        try {
            f11176a[cqf.FILLED_NEW_ARRAY_RANGE.ordinal()] = 142;
        } catch (NoSuchFieldError unused142) {
        }
        try {
            f11176a[cqf.PACKED_SWITCH.ordinal()] = 143;
        } catch (NoSuchFieldError unused143) {
        }
        try {
            f11176a[cqf.SPARSE_SWITCH.ordinal()] = 144;
        } catch (NoSuchFieldError unused144) {
        }
        try {
            f11176a[cqf.PACKED_SWITCH_PAYLOAD.ordinal()] = 145;
        } catch (NoSuchFieldError unused145) {
        }
        try {
            f11176a[cqf.SPARSE_SWITCH_PAYLOAD.ordinal()] = 146;
        } catch (NoSuchFieldError unused146) {
        }
        try {
            f11176a[cqf.MONITOR_ENTER.ordinal()] = 147;
        } catch (NoSuchFieldError unused147) {
        }
        try {
            f11176a[cqf.MONITOR_EXIT.ordinal()] = 148;
        } catch (NoSuchFieldError unused148) {
        }
    }
}
