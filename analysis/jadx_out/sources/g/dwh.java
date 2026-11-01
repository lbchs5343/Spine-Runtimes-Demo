package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.Serializable;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes3.dex */
public final class dwh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dwh[] f14936a;
    public static final dwh zza;
    public static final dwh zzb;
    public static final dwh zzc;
    public static final dwh zzd;
    public static final dwh zze;
    public static final dwh zzf;
    public static final dwh zzg;
    public static final dwh zzh;
    public static final dwh zzi;
    public static final dwh zzj;
    private final Class zzl;
    private final Class zzm;
    private final Object zzn;

    static {
        dwh dwhVar = new dwh("VOID", 0, Void.class, Void.class, null);
        zza = dwhVar;
        Class cls = Integer.TYPE;
        dwh dwhVar2 = new dwh("INT", 1, cls, Integer.class, 0);
        zzb = dwhVar2;
        dwh dwhVar3 = new dwh("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = dwhVar3;
        dwh dwhVar4 = new dwh("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        zzd = dwhVar4;
        dwh dwhVar5 = new dwh("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = dwhVar5;
        dwh dwhVar6 = new dwh("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = dwhVar6;
        dwh dwhVar7 = new dwh("STRING", 6, String.class, String.class, "");
        zzg = dwhVar7;
        dwh dwhVar8 = new dwh("BYTE_STRING", 7, cyb.class, cyb.class, cyb.f13731d);
        zzh = dwhVar8;
        dwh dwhVar9 = new dwh("ENUM", 8, cls, Integer.class, null);
        zzi = dwhVar9;
        dwh dwhVar10 = new dwh("MESSAGE", 9, Object.class, Object.class, null);
        zzj = dwhVar10;
        f14936a = new dwh[]{dwhVar, dwhVar2, dwhVar3, dwhVar4, dwhVar5, dwhVar6, dwhVar7, dwhVar8, dwhVar9, dwhVar10};
    }

    public dwh(String str, int i, Class cls, Class cls2, Serializable serializable) {
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = serializable;
    }

    public static dwh[] values() {
        return (dwh[]) f14936a.clone();
    }

    public final Class b() {
        return this.zzm;
    }
}
