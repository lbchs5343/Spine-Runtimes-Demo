package g;

import java.io.File;
import java.util.Comparator;

/* loaded from: classes.dex */
public final /* synthetic */ class fdq implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16623a;

    public /* synthetic */ fdq(int i) {
        this.f16623a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f16623a) {
            case 0:
                return ((String) obj).compareTo((String) obj2);
            case 1:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i = 0; i < bArr.length; i++) {
                    byte b2 = bArr[i];
                    byte b3 = bArr2[i];
                    if (b2 != b3) {
                        return b2 - b3;
                    }
                }
                return 0;
            case 2:
                return Long.compare(((Long) obj2).longValue(), ((Long) obj).longValue());
            case 3:
                guv guvVar = (guv) obj;
                guv guvVar2 = (guv) obj2;
                if (guvVar == guvVar2) {
                    return 0;
                }
                return guvVar.f18789f == guvVar2 ? 1 : -1;
            default:
                int i2 = b.c.d.f355d;
                return String.CASE_INSENSITIVE_ORDER.compare(((File) obj).getName(), ((File) obj2).getName());
        }
    }
}
