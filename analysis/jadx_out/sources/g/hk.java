package g;

import com.google.android.gms.internal.ads.zzgty;
import com.google.android.gms.internal.ads.zzgve;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class hk {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f19375a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f19376b;

    static {
        int[] iArr = new int[zzgty.values().length];
        f19376b = iArr;
        try {
            iArr[zzgty.SYMMETRIC.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f19376b[zzgty.ASYMMETRIC_PRIVATE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        int[] iArr2 = new int[zzgve.values().length];
        f19375a = iArr2;
        try {
            iArr2[zzgve.TINK.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f19375a[zzgve.LEGACY.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f19375a[zzgve.RAW.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f19375a[zzgve.CRUNCHY.ordinal()] = 4;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
