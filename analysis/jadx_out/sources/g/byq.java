package g;

import android.graphics.Rect;
import android.text.TextUtils;
import java.text.Collator;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class byq implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final Object f12461a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f12462b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f12463c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f12464d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f12465e;

    public byq(gwf gwfVar, String str, boolean z, Collator collator) {
        this.f12464d = 0;
        this.f12463c = gwfVar;
        this.f12461a = str;
        this.f12465e = z;
        this.f12462b = collator;
    }

    public byq(boolean z, cuf cufVar) {
        this.f12464d = 1;
        this.f12461a = new Rect();
        this.f12462b = new Rect();
        this.f12465e = z;
        this.f12463c = cufVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ab, code lost:
    
        if (r7 < 0) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b2  */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int compare(Object obj, Object obj2) {
        switch (this.f12464d) {
            case 0:
                auj aujVar = (auj) obj;
                auj aujVar2 = (auj) obj2;
                Collator collator = (Collator) this.f12462b;
                gwf gwfVar = (gwf) this.f12463c;
                String str = (String) this.f12461a;
                int i = -1;
                if (aujVar.j == null) {
                    if (aujVar2.j == null) {
                        i = 0;
                    }
                } else if (aujVar2.j == null) {
                    i = 1;
                } else if (TextUtils.isEmpty(str) || aujVar.j.equals(aujVar2.j)) {
                    i = -100;
                } else {
                    int indexOf = aujVar.j.toUpperCase().indexOf(str.toUpperCase());
                    int indexOf2 = aujVar2.j.toUpperCase().indexOf(str.toUpperCase());
                    if (indexOf < 0) {
                        if (indexOf2 >= 0) {
                            i = 1;
                            if (i == -100) {
                                i = Double.compare(gwfVar.f18868b.t(str, aujVar.j), gwfVar.f18868b.t(str, aujVar2.j));
                            }
                        }
                        i = -100;
                        if (i == -100) {
                        }
                    }
                }
                if (i != -100) {
                    return i;
                }
                if (!this.f12465e) {
                    return collator.compare(aujVar.j, aujVar2.j);
                }
                String str2 = aujVar.j;
                String str3 = aujVar2.j;
                ens ensVar = new ens();
                ensVar.f15873b = collator;
                return ensVar.c(str2, str3);
            default:
                Rect rect = (Rect) this.f12461a;
                Rect rect2 = (Rect) this.f12462b;
                ((cuf) this.f12463c).getClass();
                ((fnz) obj).i(rect);
                ((fnz) obj2).i(rect2);
                int i2 = rect.top;
                int i3 = rect2.top;
                if (i2 >= i3) {
                    if (i2 <= i3) {
                        int i4 = rect.left;
                        int i5 = rect2.left;
                        boolean z = this.f12465e;
                        if (i4 < i5) {
                            if (z) {
                            }
                        } else if (i4 <= i5) {
                            int i6 = rect.bottom;
                            int i7 = rect2.bottom;
                            if (i6 >= i7) {
                                if (i6 <= i7) {
                                    int i8 = rect.right;
                                    int i9 = rect2.right;
                                    if (i8 < i9) {
                                        if (z) {
                                        }
                                    } else {
                                        if (i8 <= i9) {
                                            return 0;
                                        }
                                        if (z) {
                                        }
                                    }
                                }
                            }
                        } else if (z) {
                        }
                    }
                    return 1;
                }
                return -1;
        }
    }
}
