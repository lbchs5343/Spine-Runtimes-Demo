package g;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zza' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes3.dex */
public final class jh {

    /* renamed from: a, reason: collision with root package name */
    public static final jh[] f19480a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ jh[] f19481b;
    public static final jh zzA;
    public static final jh zzB;
    public static final jh zzC;
    public static final jh zzD;
    public static final jh zzE;
    public static final jh zzF;
    public static final jh zzG;
    public static final jh zzH;
    public static final jh zzI;
    public static final jh zzJ;
    public static final jh zzK;
    public static final jh zzL;
    public static final jh zzM;
    public static final jh zzN;
    public static final jh zzO;
    public static final jh zzP;
    public static final jh zzQ;
    public static final jh zzR;
    public static final jh zzS;
    public static final jh zzT;
    public static final jh zzU;
    public static final jh zzV;
    public static final jh zzW;
    public static final jh zzX;
    public static final jh zzY;
    public static final jh zza;
    public static final jh zzb;
    public static final jh zzc;
    public static final jh zzd;
    public static final jh zze;
    public static final jh zzf;
    public static final jh zzg;
    public static final jh zzh;
    public static final jh zzi;
    public static final jh zzj;
    public static final jh zzk;
    public static final jh zzl;
    public static final jh zzm;
    public static final jh zzn;
    public static final jh zzo;
    public static final jh zzp;
    public static final jh zzq;
    public static final jh zzr;
    public static final jh zzs;
    public static final jh zzt;
    public static final jh zzu;
    public static final jh zzv;
    public static final jh zzw;
    public static final jh zzx;
    public static final jh zzy;
    public static final jh zzz;
    private final dwh zzab;
    private final int zzac;
    private final Class zzad;

    static {
        dwh dwhVar = dwh.zze;
        jh jhVar = new jh("DOUBLE", 0, 0, 1, dwhVar);
        zza = jhVar;
        dwh dwhVar2 = dwh.zzd;
        jh jhVar2 = new jh("FLOAT", 1, 1, 1, dwhVar2);
        zzb = jhVar2;
        dwh dwhVar3 = dwh.zzc;
        jh jhVar3 = new jh("INT64", 2, 2, 1, dwhVar3);
        zzc = jhVar3;
        jh jhVar4 = new jh("UINT64", 3, 3, 1, dwhVar3);
        zzd = jhVar4;
        dwh dwhVar4 = dwh.zzb;
        jh jhVar5 = new jh("INT32", 4, 4, 1, dwhVar4);
        zze = jhVar5;
        jh jhVar6 = new jh("FIXED64", 5, 5, 1, dwhVar3);
        zzf = jhVar6;
        jh jhVar7 = new jh("FIXED32", 6, 6, 1, dwhVar4);
        zzg = jhVar7;
        dwh dwhVar5 = dwh.zzf;
        jh jhVar8 = new jh("BOOL", 7, 7, 1, dwhVar5);
        zzh = jhVar8;
        dwh dwhVar6 = dwh.zzg;
        jh jhVar9 = new jh("STRING", 8, 8, 1, dwhVar6);
        zzi = jhVar9;
        dwh dwhVar7 = dwh.zzj;
        jh jhVar10 = new jh("MESSAGE", 9, 9, 1, dwhVar7);
        zzj = jhVar10;
        dwh dwhVar8 = dwh.zzh;
        jh jhVar11 = new jh("BYTES", 10, 10, 1, dwhVar8);
        zzk = jhVar11;
        jh jhVar12 = new jh("UINT32", 11, 11, 1, dwhVar4);
        zzl = jhVar12;
        dwh dwhVar9 = dwh.zzi;
        jh jhVar13 = new jh("ENUM", 12, 12, 1, dwhVar9);
        zzm = jhVar13;
        jh jhVar14 = new jh("SFIXED32", 13, 13, 1, dwhVar4);
        zzn = jhVar14;
        jh jhVar15 = new jh("SFIXED64", 14, 14, 1, dwhVar3);
        zzo = jhVar15;
        jh jhVar16 = new jh("SINT32", 15, 15, 1, dwhVar4);
        zzp = jhVar16;
        jh jhVar17 = new jh("SINT64", 16, 16, 1, dwhVar3);
        zzq = jhVar17;
        jh jhVar18 = new jh("GROUP", 17, 17, 1, dwhVar7);
        zzr = jhVar18;
        jh jhVar19 = new jh("DOUBLE_LIST", 18, 18, 2, dwhVar);
        zzs = jhVar19;
        jh jhVar20 = new jh("FLOAT_LIST", 19, 19, 2, dwhVar2);
        zzt = jhVar20;
        jh jhVar21 = new jh("INT64_LIST", 20, 20, 2, dwhVar3);
        zzu = jhVar21;
        jh jhVar22 = new jh("UINT64_LIST", 21, 21, 2, dwhVar3);
        zzv = jhVar22;
        jh jhVar23 = new jh("INT32_LIST", 22, 22, 2, dwhVar4);
        zzw = jhVar23;
        jh jhVar24 = new jh("FIXED64_LIST", 23, 23, 2, dwhVar3);
        zzx = jhVar24;
        jh jhVar25 = new jh("FIXED32_LIST", 24, 24, 2, dwhVar4);
        zzy = jhVar25;
        jh jhVar26 = new jh("BOOL_LIST", 25, 25, 2, dwhVar5);
        zzz = jhVar26;
        jh jhVar27 = new jh("STRING_LIST", 26, 26, 2, dwhVar6);
        zzA = jhVar27;
        jh jhVar28 = new jh("MESSAGE_LIST", 27, 27, 2, dwhVar7);
        zzB = jhVar28;
        jh jhVar29 = new jh("BYTES_LIST", 28, 28, 2, dwhVar8);
        zzC = jhVar29;
        jh jhVar30 = new jh("UINT32_LIST", 29, 29, 2, dwhVar4);
        zzD = jhVar30;
        jh jhVar31 = new jh("ENUM_LIST", 30, 30, 2, dwhVar9);
        zzE = jhVar31;
        jh jhVar32 = new jh("SFIXED32_LIST", 31, 31, 2, dwhVar4);
        zzF = jhVar32;
        jh jhVar33 = new jh("SFIXED64_LIST", 32, 32, 2, dwhVar3);
        zzG = jhVar33;
        jh jhVar34 = new jh("SINT32_LIST", 33, 33, 2, dwhVar4);
        zzH = jhVar34;
        jh jhVar35 = new jh("SINT64_LIST", 34, 34, 2, dwhVar3);
        zzI = jhVar35;
        jh jhVar36 = new jh("DOUBLE_LIST_PACKED", 35, 35, 3, dwhVar);
        zzJ = jhVar36;
        jh jhVar37 = new jh("FLOAT_LIST_PACKED", 36, 36, 3, dwhVar2);
        zzK = jhVar37;
        jh jhVar38 = new jh("INT64_LIST_PACKED", 37, 37, 3, dwhVar3);
        zzL = jhVar38;
        jh jhVar39 = new jh("UINT64_LIST_PACKED", 38, 38, 3, dwhVar3);
        zzM = jhVar39;
        jh jhVar40 = new jh("INT32_LIST_PACKED", 39, 39, 3, dwhVar4);
        zzN = jhVar40;
        jh jhVar41 = new jh("FIXED64_LIST_PACKED", 40, 40, 3, dwhVar3);
        zzO = jhVar41;
        jh jhVar42 = new jh("FIXED32_LIST_PACKED", 41, 41, 3, dwhVar4);
        zzP = jhVar42;
        jh jhVar43 = new jh("BOOL_LIST_PACKED", 42, 42, 3, dwhVar5);
        zzQ = jhVar43;
        jh jhVar44 = new jh("UINT32_LIST_PACKED", 43, 43, 3, dwhVar4);
        zzR = jhVar44;
        jh jhVar45 = new jh("ENUM_LIST_PACKED", 44, 44, 3, dwhVar9);
        zzS = jhVar45;
        jh jhVar46 = new jh("SFIXED32_LIST_PACKED", 45, 45, 3, dwhVar4);
        zzT = jhVar46;
        jh jhVar47 = new jh("SFIXED64_LIST_PACKED", 46, 46, 3, dwhVar3);
        zzU = jhVar47;
        jh jhVar48 = new jh("SINT32_LIST_PACKED", 47, 47, 3, dwhVar4);
        zzV = jhVar48;
        jh jhVar49 = new jh("SINT64_LIST_PACKED", 48, 48, 3, dwhVar3);
        zzW = jhVar49;
        jh jhVar50 = new jh("GROUP_LIST", 49, 49, 2, dwhVar7);
        zzX = jhVar50;
        jh jhVar51 = new jh("MAP", 50, 50, 4, dwh.zza);
        zzY = jhVar51;
        f19481b = new jh[]{jhVar, jhVar2, jhVar3, jhVar4, jhVar5, jhVar6, jhVar7, jhVar8, jhVar9, jhVar10, jhVar11, jhVar12, jhVar13, jhVar14, jhVar15, jhVar16, jhVar17, jhVar18, jhVar19, jhVar20, jhVar21, jhVar22, jhVar23, jhVar24, jhVar25, jhVar26, jhVar27, jhVar28, jhVar29, jhVar30, jhVar31, jhVar32, jhVar33, jhVar34, jhVar35, jhVar36, jhVar37, jhVar38, jhVar39, jhVar40, jhVar41, jhVar42, jhVar43, jhVar44, jhVar45, jhVar46, jhVar47, jhVar48, jhVar49, jhVar50, jhVar51};
        jh[] values = values();
        f19480a = new jh[values.length];
        for (jh jhVar52 : values) {
            f19480a[jhVar52.zzac] = jhVar52;
        }
    }

    public jh(String str, int i, int i2, int i3, dwh dwhVar) {
        this.zzac = i2;
        this.zzab = dwhVar;
        dwh dwhVar2 = dwh.zza;
        int i4 = i3 - 1;
        if (i4 == 1) {
            this.zzad = dwhVar.b();
        } else if (i4 != 3) {
            this.zzad = null;
        } else {
            this.zzad = dwhVar.b();
        }
        if (i3 == 1) {
            dwhVar.ordinal();
        }
    }

    public static jh[] values() {
        return (jh[]) f19481b.clone();
    }

    public final int zza() {
        return this.zzac;
    }
}
