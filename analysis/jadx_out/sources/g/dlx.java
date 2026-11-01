package g;

import android.text.SpannableStringBuilder;

/* loaded from: classes.dex */
public final class dlx {

    /* renamed from: a, reason: collision with root package name */
    public static final dlx f14397a;

    /* renamed from: b, reason: collision with root package name */
    public static final dlx f14398b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f14399c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f14400d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f14401e;

    static {
        gez gezVar = cl.f13048d;
        f14399c = Character.toString((char) 8206);
        f14400d = Character.toString((char) 8207);
        f14397a = new dlx(false);
        f14398b = new dlx(true);
    }

    public dlx(boolean z) {
        gez gezVar = cl.f13046b;
        this.f14401e = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x006e, code lost:
    
        if (r1 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0071, code lost:
    
        if (r2 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0073, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0076, code lost:
    
        if (r0.f12655e <= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x007c, code lost:
    
        switch(r0.f()) {
            case 14: goto L66;
            case 15: goto L66;
            case 16: goto L65;
            case 17: goto L65;
            case 18: goto L64;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0080, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0083, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0086, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0089, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x008c, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int f(CharSequence charSequence) {
        byte directionality;
        ccu ccuVar = new ccu(charSequence);
        ccuVar.f12655e = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = ccuVar.f12655e;
            if (i4 < ccuVar.f12654d && i == 0) {
                CharSequence charSequence2 = ccuVar.f12653c;
                char charAt = charSequence2.charAt(i4);
                ccuVar.f12652b = charAt;
                if (Character.isHighSurrogate(charAt)) {
                    int codePointAt = Character.codePointAt(charSequence2, ccuVar.f12655e);
                    ccuVar.f12655e = Character.charCount(codePointAt) + ccuVar.f12655e;
                    directionality = Character.getDirectionality(codePointAt);
                } else {
                    ccuVar.f12655e++;
                    char c2 = ccuVar.f12652b;
                    directionality = c2 < 1792 ? ccu.f12651a[c2] : Character.getDirectionality(c2);
                }
                if (directionality != 0) {
                    if (directionality == 1 || directionality == 2) {
                        if (i3 == 0) {
                        }
                    } else if (directionality != 9) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                i3++;
                                i2 = -1;
                                continue;
                            case 16:
                            case 17:
                                i3++;
                                i2 = 1;
                                continue;
                            case 18:
                                i3--;
                                i2 = 0;
                                continue;
                        }
                    }
                } else if (i3 == 0) {
                }
                i = i3;
            }
        }
        return -1;
    }

    public static int g(CharSequence charSequence) {
        ccu ccuVar = new ccu(charSequence);
        ccuVar.f12655e = ccuVar.f12654d;
        int i = 0;
        int i2 = 0;
        while (ccuVar.f12655e > 0) {
            byte f2 = ccuVar.f();
            if (f2 != 0) {
                if (f2 == 1 || f2 == 2) {
                    if (i == 0) {
                        return 1;
                    }
                    if (i2 == 0) {
                        i2 = i;
                    }
                } else if (f2 != 9) {
                    switch (f2) {
                        case 14:
                        case 15:
                            if (i2 == i) {
                                return -1;
                            }
                            i--;
                            break;
                        case 16:
                        case 17:
                            if (i2 == i) {
                                return 1;
                            }
                            i--;
                            break;
                        case 18:
                            i++;
                            break;
                        default:
                            if (i2 != 0) {
                                break;
                            } else {
                                i2 = i;
                                break;
                            }
                    }
                } else {
                    continue;
                }
            } else {
                if (i == 0) {
                    return -1;
                }
                if (i2 == 0) {
                    i2 = i;
                }
            }
        }
        return 0;
    }

    public final SpannableStringBuilder h(CharSequence charSequence) {
        gez gezVar = cl.f13048d;
        if (charSequence == null) {
            return null;
        }
        boolean k = gezVar.k(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean k2 = (k ? cl.f13047c : cl.f13046b).k(charSequence, charSequence.length());
        String str = "";
        String str2 = f14400d;
        String str3 = f14399c;
        boolean z = this.f14401e;
        spannableStringBuilder.append((CharSequence) ((z || !(k2 || f(charSequence) == 1)) ? (!z || (k2 && f(charSequence) != -1)) ? "" : str2 : str3));
        if (k != z) {
            spannableStringBuilder.append(k ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean k3 = (k ? cl.f13047c : cl.f13046b).k(charSequence, charSequence.length());
        if (!z && (k3 || g(charSequence) == 1)) {
            str = str3;
        } else if (z && (!k3 || g(charSequence) == -1)) {
            str = str2;
        }
        spannableStringBuilder.append((CharSequence) str);
        return spannableStringBuilder;
    }
}
