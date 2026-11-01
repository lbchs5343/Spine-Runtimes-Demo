package g;

/* loaded from: classes.dex */
public enum aiu {
    TRANSLATE(0, "translation", "point"),
    TRANSLATE_X(1, "translationX", "float"),
    TRANSLATE_Y(2, "translationY", "float"),
    ROTATE_X(3, "rotationX", "float"),
    ROTATE_Y(4, "rotationY", "float"),
    ROTATE_Z(5, "rotation", "float"),
    SCALE(6, "scale", "point"),
    SCALE_X(7, "scaleX", "float"),
    SCALE_Y(8, "scaleY", "float"),
    ALPHA(9, "alpha", "float"),
    BACKGROUND_COLOR(10, "backgroundColor", "int"),
    BORDER_RADIUS(11, "borderRadius", "float"),
    RIPPLE(12, "ripple", "float"),
    SHINE(13, "shine", "float");


    /* renamed from: f, reason: collision with root package name */
    private final String f10283f;
    private final String fw;
    private final String jy;

    aiu(int i, String str, String str2) {
        this.jy = r2;
        this.f10283f = str;
        this.fw = str2;
    }

    public static aiu b(String str) {
        str.getClass();
        switch (str) {
            case "translateX":
                return TRANSLATE_X;
            case "translateY":
                return TRANSLATE_Y;
            case "opacity":
                return ALPHA;
            case "ripple":
                return RIPPLE;
            case "scaleX":
                return SCALE_X;
            case "scaleY":
                return SCALE_Y;
            case "scale":
                return SCALE;
            case "translate":
                return TRANSLATE;
            case "backgroundColor":
                return BACKGROUND_COLOR;
            case "borderRadius":
                return BORDER_RADIUS;
            case "rotateX":
                return ROTATE_X;
            case "rotateY":
                return ROTATE_Y;
            case "rotateZ":
                return ROTATE_Z;
            default:
                return TRANSLATE_X;
        }
    }

    public final String c() {
        return this.fw;
    }

    public final String e() {
        return this.f10283f;
    }

    public final String g() {
        return this.jy;
    }
}
