package g;

/* loaded from: classes.dex */
public final class ccu {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f12651a = new byte[1792];

    /* renamed from: b, reason: collision with root package name */
    public char f12652b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f12653c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12654d;

    /* renamed from: e, reason: collision with root package name */
    public int f12655e;

    static {
        for (int i = 0; i < 1792; i++) {
            f12651a[i] = Character.getDirectionality(i);
        }
    }

    public ccu(CharSequence charSequence) {
        this.f12653c = charSequence;
        this.f12654d = charSequence.length();
    }

    public final byte f() {
        int i = this.f12655e - 1;
        CharSequence charSequence = this.f12653c;
        char charAt = charSequence.charAt(i);
        this.f12652b = charAt;
        if (Character.isLowSurrogate(charAt)) {
            int codePointBefore = Character.codePointBefore(charSequence, this.f12655e);
            this.f12655e -= Character.charCount(codePointBefore);
            return Character.getDirectionality(codePointBefore);
        }
        this.f12655e--;
        char c2 = this.f12652b;
        return c2 < 1792 ? f12651a[c2] : Character.getDirectionality(c2);
    }
}
