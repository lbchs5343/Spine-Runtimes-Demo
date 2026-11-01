package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Objects;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class avf extends kj {

    /* renamed from: a, reason: collision with root package name */
    public final String f10914a;
    public final Method ae;
    public final acq af;
    public final boolean ag;
    public final int ah;

    public avf(Method method, int i, String str, boolean z) {
        acq acqVar = acq.aw;
        this.ae = method;
        this.ah = i;
        Objects.requireNonNull(str, "name == null");
        this.f10914a = str;
        this.af = acqVar;
        this.ag = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ff  */
    @Override // g.kj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(gea geaVar, Object obj) {
        String str;
        String replace;
        String str2 = this.f10914a;
        if (obj == null) {
            throw aky.am(this.ae, this.ah, tn.ad("Path parameter \"", str2, "\" value must not be null."), new Object[0]);
        }
        this.af.getClass();
        String obj2 = obj.toString();
        if (geaVar.l == null) {
            throw new AssertionError();
        }
        int length = obj2.length();
        int i = 0;
        while (i < length) {
            int codePointAt = obj2.codePointAt(i);
            boolean z = this.ag;
            int i2 = 47;
            int i3 = -1;
            int i4 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
            int i5 = 32;
            if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                clq clqVar = new clq();
                clqVar.y(0, i, obj2);
                clq clqVar2 = null;
                while (i < length) {
                    int codePointAt2 = obj2.codePointAt(i);
                    if (!z || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                        if (codePointAt2 < i5 || codePointAt2 >= i4 || " \"<>^`{}|\\?#".indexOf(codePointAt2) != i3 || (!z && (codePointAt2 == i2 || codePointAt2 == 37))) {
                            if (clqVar2 == null) {
                                clqVar2 = new clq();
                            }
                            clqVar2.am(codePointAt2);
                            long j = clqVar2.f13080b;
                            for (long j2 = 0; j2 < j; j2++) {
                                byte an = clqVar2.an(j2);
                                clqVar.al(37);
                                char[] cArr = gea.f17967a;
                                clqVar.al(cArr[((an & 255) >> 4) & 15]);
                                clqVar.al(cArr[an & 15]);
                            }
                            clqVar2.aa();
                            i += Character.charCount(codePointAt2);
                            i2 = 47;
                            i3 = -1;
                            i4 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
                            i5 = 32;
                        } else {
                            clqVar.am(codePointAt2);
                        }
                    }
                    i += Character.charCount(codePointAt2);
                    i2 = 47;
                    i3 = -1;
                    i4 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
                    i5 = 32;
                }
                str = clqVar.x();
                replace = geaVar.l.replace("{" + str2 + "}", str);
                if (!gea.f17968b.matcher(replace).matches()) {
                    throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): ".concat(obj2));
                }
                geaVar.l = replace;
                return;
            }
            i += Character.charCount(codePointAt);
        }
        str = obj2;
        replace = geaVar.l.replace("{" + str2 + "}", str);
        if (!gea.f17968b.matcher(replace).matches()) {
        }
    }
}
