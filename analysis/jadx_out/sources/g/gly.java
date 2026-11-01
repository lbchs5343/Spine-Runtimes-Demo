package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class gly {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f18382a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f18383b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int[] f18384c;

    static {
        int[] iArr = new int[eqp.values().length];
        f18384c = iArr;
        try {
            iArr[eqp.DIRECT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f18384c[eqp.VIRTUAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f18384c[eqp.INTERFACE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f18384c[eqp.POLYMORPHIC.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f18384c[eqp.SUPER.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f18384c[eqp.STATIC.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr2 = new int[hay.values().length];
        f18383b = iArr2;
        try {
            iArr2[hay.CONST_STR.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f18383b[hay.CONST_CLASS.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f18383b[hay.CONST.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f18383b[hay.MOVE.ordinal()] = 4;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f18383b[hay.CHECK_CAST.ordinal()] = 5;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f18383b[hay.CAST.ordinal()] = 6;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f18383b[hay.ARITH.ordinal()] = 7;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f18383b[hay.NEG.ordinal()] = 8;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f18383b[hay.NOT.ordinal()] = 9;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f18383b[hay.RETURN.ordinal()] = 10;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            f18383b[hay.BREAK.ordinal()] = 11;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            f18383b[hay.CONTINUE.ordinal()] = 12;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            f18383b[hay.THROW.ordinal()] = 13;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            f18383b[hay.CMP_L.ordinal()] = 14;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            f18383b[hay.CMP_G.ordinal()] = 15;
        } catch (NoSuchFieldError unused21) {
        }
        try {
            f18383b[hay.INSTANCE_OF.ordinal()] = 16;
        } catch (NoSuchFieldError unused22) {
        }
        try {
            f18383b[hay.CONSTRUCTOR.ordinal()] = 17;
        } catch (NoSuchFieldError unused23) {
        }
        try {
            f18383b[hay.INVOKE.ordinal()] = 18;
        } catch (NoSuchFieldError unused24) {
        }
        try {
            f18383b[hay.NEW_ARRAY.ordinal()] = 19;
        } catch (NoSuchFieldError unused25) {
        }
        try {
            f18383b[hay.ARRAY_LENGTH.ordinal()] = 20;
        } catch (NoSuchFieldError unused26) {
        }
        try {
            f18383b[hay.FILLED_NEW_ARRAY.ordinal()] = 21;
        } catch (NoSuchFieldError unused27) {
        }
        try {
            f18383b[hay.FILL_ARRAY.ordinal()] = 22;
        } catch (NoSuchFieldError unused28) {
        }
        try {
            f18383b[hay.AGET.ordinal()] = 23;
        } catch (NoSuchFieldError unused29) {
        }
        try {
            f18383b[hay.APUT.ordinal()] = 24;
        } catch (NoSuchFieldError unused30) {
        }
        try {
            f18383b[hay.IGET.ordinal()] = 25;
        } catch (NoSuchFieldError unused31) {
        }
        try {
            f18383b[hay.IPUT.ordinal()] = 26;
        } catch (NoSuchFieldError unused32) {
        }
        try {
            f18383b[hay.SGET.ordinal()] = 27;
        } catch (NoSuchFieldError unused33) {
        }
        try {
            f18383b[hay.SPUT.ordinal()] = 28;
        } catch (NoSuchFieldError unused34) {
        }
        try {
            f18383b[hay.STR_CONCAT.ordinal()] = 29;
        } catch (NoSuchFieldError unused35) {
        }
        try {
            f18383b[hay.MONITOR_ENTER.ordinal()] = 30;
        } catch (NoSuchFieldError unused36) {
        }
        try {
            f18383b[hay.MONITOR_EXIT.ordinal()] = 31;
        } catch (NoSuchFieldError unused37) {
        }
        try {
            f18383b[hay.TERNARY.ordinal()] = 32;
        } catch (NoSuchFieldError unused38) {
        }
        try {
            f18383b[hay.ONE_ARG.ordinal()] = 33;
        } catch (NoSuchFieldError unused39) {
        }
        try {
            f18383b[hay.IF.ordinal()] = 34;
        } catch (NoSuchFieldError unused40) {
        }
        try {
            f18383b[hay.GOTO.ordinal()] = 35;
        } catch (NoSuchFieldError unused41) {
        }
        try {
            f18383b[hay.MOVE_EXCEPTION.ordinal()] = 36;
        } catch (NoSuchFieldError unused42) {
        }
        try {
            f18383b[hay.SWITCH.ordinal()] = 37;
        } catch (NoSuchFieldError unused43) {
        }
        try {
            f18383b[hay.NEW_INSTANCE.ordinal()] = 38;
        } catch (NoSuchFieldError unused44) {
        }
        try {
            f18383b[hay.PHI.ordinal()] = 39;
        } catch (NoSuchFieldError unused45) {
        }
        try {
            f18383b[hay.MOVE_RESULT.ordinal()] = 40;
        } catch (NoSuchFieldError unused46) {
        }
        try {
            f18383b[hay.FILL_ARRAY_DATA.ordinal()] = 41;
        } catch (NoSuchFieldError unused47) {
        }
        try {
            f18383b[hay.SWITCH_DATA.ordinal()] = 42;
        } catch (NoSuchFieldError unused48) {
        }
        try {
            f18383b[hay.MOVE_MULTI.ordinal()] = 43;
        } catch (NoSuchFieldError unused49) {
        }
        try {
            f18383b[hay.JAVA_JSR.ordinal()] = 44;
        } catch (NoSuchFieldError unused50) {
        }
        try {
            f18383b[hay.JAVA_RET.ordinal()] = 45;
        } catch (NoSuchFieldError unused51) {
        }
        int[] iArr3 = new int[fly.values().length];
        f18382a = iArr3;
        try {
            iArr3[fly.CLASS_INSTANCE.ordinal()] = 1;
        } catch (NoSuchFieldError unused52) {
        }
        try {
            f18382a[fly.VAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused53) {
        }
    }
}
