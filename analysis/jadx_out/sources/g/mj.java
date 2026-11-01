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
public final class mj {

    /* renamed from: a, reason: collision with root package name */
    public static final mj[] f19652a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ mj[] f19653b;
    public static final mj zzA;
    public static final mj zzB;
    public static final mj zzC;
    public static final mj zzD;
    public static final mj zzE;
    public static final mj zzF;
    public static final mj zzG;
    public static final mj zzH;
    public static final mj zzI;
    public static final mj zzJ;
    public static final mj zzK;
    public static final mj zzL;
    public static final mj zzM;
    public static final mj zzN;
    public static final mj zzO;
    public static final mj zzP;
    public static final mj zzQ;
    public static final mj zzR;
    public static final mj zzS;
    public static final mj zzT;
    public static final mj zzU;
    public static final mj zzV;
    public static final mj zzW;
    public static final mj zzX;
    public static final mj zzY;
    public static final mj zza;
    public static final mj zzb;
    public static final mj zzc;
    public static final mj zzd;
    public static final mj zze;
    public static final mj zzf;
    public static final mj zzg;
    public static final mj zzh;
    public static final mj zzi;
    public static final mj zzj;
    public static final mj zzk;
    public static final mj zzl;
    public static final mj zzm;
    public static final mj zzn;
    public static final mj zzo;
    public static final mj zzp;
    public static final mj zzq;
    public static final mj zzr;
    public static final mj zzs;
    public static final mj zzt;
    public static final mj zzu;
    public static final mj zzv;
    public static final mj zzw;
    public static final mj zzx;
    public static final mj zzy;
    public static final mj zzz;
    private final int zzab;

    static {
        bvn bvnVar = bvn.zze;
        mj mjVar = new mj("DOUBLE", 0, 0, 1, bvnVar);
        zza = mjVar;
        bvn bvnVar2 = bvn.zzd;
        mj mjVar2 = new mj("FLOAT", 1, 1, 1, bvnVar2);
        zzb = mjVar2;
        bvn bvnVar3 = bvn.zzc;
        mj mjVar3 = new mj("INT64", 2, 2, 1, bvnVar3);
        zzc = mjVar3;
        mj mjVar4 = new mj("UINT64", 3, 3, 1, bvnVar3);
        zzd = mjVar4;
        bvn bvnVar4 = bvn.zzb;
        mj mjVar5 = new mj("INT32", 4, 4, 1, bvnVar4);
        zze = mjVar5;
        mj mjVar6 = new mj("FIXED64", 5, 5, 1, bvnVar3);
        zzf = mjVar6;
        mj mjVar7 = new mj("FIXED32", 6, 6, 1, bvnVar4);
        zzg = mjVar7;
        bvn bvnVar5 = bvn.zzf;
        mj mjVar8 = new mj("BOOL", 7, 7, 1, bvnVar5);
        zzh = mjVar8;
        bvn bvnVar6 = bvn.zzg;
        mj mjVar9 = new mj("STRING", 8, 8, 1, bvnVar6);
        zzi = mjVar9;
        bvn bvnVar7 = bvn.zzj;
        mj mjVar10 = new mj("MESSAGE", 9, 9, 1, bvnVar7);
        zzj = mjVar10;
        bvn bvnVar8 = bvn.zzh;
        mj mjVar11 = new mj("BYTES", 10, 10, 1, bvnVar8);
        zzk = mjVar11;
        mj mjVar12 = new mj("UINT32", 11, 11, 1, bvnVar4);
        zzl = mjVar12;
        bvn bvnVar9 = bvn.zzi;
        mj mjVar13 = new mj("ENUM", 12, 12, 1, bvnVar9);
        zzm = mjVar13;
        mj mjVar14 = new mj("SFIXED32", 13, 13, 1, bvnVar4);
        zzn = mjVar14;
        mj mjVar15 = new mj("SFIXED64", 14, 14, 1, bvnVar3);
        zzo = mjVar15;
        mj mjVar16 = new mj("SINT32", 15, 15, 1, bvnVar4);
        zzp = mjVar16;
        mj mjVar17 = new mj("SINT64", 16, 16, 1, bvnVar3);
        zzq = mjVar17;
        mj mjVar18 = new mj("GROUP", 17, 17, 1, bvnVar7);
        zzr = mjVar18;
        mj mjVar19 = new mj("DOUBLE_LIST", 18, 18, 2, bvnVar);
        zzs = mjVar19;
        mj mjVar20 = new mj("FLOAT_LIST", 19, 19, 2, bvnVar2);
        zzt = mjVar20;
        mj mjVar21 = new mj("INT64_LIST", 20, 20, 2, bvnVar3);
        zzu = mjVar21;
        mj mjVar22 = new mj("UINT64_LIST", 21, 21, 2, bvnVar3);
        zzv = mjVar22;
        mj mjVar23 = new mj("INT32_LIST", 22, 22, 2, bvnVar4);
        zzw = mjVar23;
        mj mjVar24 = new mj("FIXED64_LIST", 23, 23, 2, bvnVar3);
        zzx = mjVar24;
        mj mjVar25 = new mj("FIXED32_LIST", 24, 24, 2, bvnVar4);
        zzy = mjVar25;
        mj mjVar26 = new mj("BOOL_LIST", 25, 25, 2, bvnVar5);
        zzz = mjVar26;
        mj mjVar27 = new mj("STRING_LIST", 26, 26, 2, bvnVar6);
        zzA = mjVar27;
        mj mjVar28 = new mj("MESSAGE_LIST", 27, 27, 2, bvnVar7);
        zzB = mjVar28;
        mj mjVar29 = new mj("BYTES_LIST", 28, 28, 2, bvnVar8);
        zzC = mjVar29;
        mj mjVar30 = new mj("UINT32_LIST", 29, 29, 2, bvnVar4);
        zzD = mjVar30;
        mj mjVar31 = new mj("ENUM_LIST", 30, 30, 2, bvnVar9);
        zzE = mjVar31;
        mj mjVar32 = new mj("SFIXED32_LIST", 31, 31, 2, bvnVar4);
        zzF = mjVar32;
        mj mjVar33 = new mj("SFIXED64_LIST", 32, 32, 2, bvnVar3);
        zzG = mjVar33;
        mj mjVar34 = new mj("SINT32_LIST", 33, 33, 2, bvnVar4);
        zzH = mjVar34;
        mj mjVar35 = new mj("SINT64_LIST", 34, 34, 2, bvnVar3);
        zzI = mjVar35;
        mj mjVar36 = new mj("DOUBLE_LIST_PACKED", 35, 35, 3, bvnVar);
        zzJ = mjVar36;
        mj mjVar37 = new mj("FLOAT_LIST_PACKED", 36, 36, 3, bvnVar2);
        zzK = mjVar37;
        mj mjVar38 = new mj("INT64_LIST_PACKED", 37, 37, 3, bvnVar3);
        zzL = mjVar38;
        mj mjVar39 = new mj("UINT64_LIST_PACKED", 38, 38, 3, bvnVar3);
        zzM = mjVar39;
        mj mjVar40 = new mj("INT32_LIST_PACKED", 39, 39, 3, bvnVar4);
        zzN = mjVar40;
        mj mjVar41 = new mj("FIXED64_LIST_PACKED", 40, 40, 3, bvnVar3);
        zzO = mjVar41;
        mj mjVar42 = new mj("FIXED32_LIST_PACKED", 41, 41, 3, bvnVar4);
        zzP = mjVar42;
        mj mjVar43 = new mj("BOOL_LIST_PACKED", 42, 42, 3, bvnVar5);
        zzQ = mjVar43;
        mj mjVar44 = new mj("UINT32_LIST_PACKED", 43, 43, 3, bvnVar4);
        zzR = mjVar44;
        mj mjVar45 = new mj("ENUM_LIST_PACKED", 44, 44, 3, bvnVar9);
        zzS = mjVar45;
        mj mjVar46 = new mj("SFIXED32_LIST_PACKED", 45, 45, 3, bvnVar4);
        zzT = mjVar46;
        mj mjVar47 = new mj("SFIXED64_LIST_PACKED", 46, 46, 3, bvnVar3);
        zzU = mjVar47;
        mj mjVar48 = new mj("SINT32_LIST_PACKED", 47, 47, 3, bvnVar4);
        zzV = mjVar48;
        mj mjVar49 = new mj("SINT64_LIST_PACKED", 48, 48, 3, bvnVar3);
        zzW = mjVar49;
        mj mjVar50 = new mj("GROUP_LIST", 49, 49, 2, bvnVar7);
        zzX = mjVar50;
        mj mjVar51 = new mj("MAP", 50, 50, 4, bvn.zza);
        zzY = mjVar51;
        f19653b = new mj[]{mjVar, mjVar2, mjVar3, mjVar4, mjVar5, mjVar6, mjVar7, mjVar8, mjVar9, mjVar10, mjVar11, mjVar12, mjVar13, mjVar14, mjVar15, mjVar16, mjVar17, mjVar18, mjVar19, mjVar20, mjVar21, mjVar22, mjVar23, mjVar24, mjVar25, mjVar26, mjVar27, mjVar28, mjVar29, mjVar30, mjVar31, mjVar32, mjVar33, mjVar34, mjVar35, mjVar36, mjVar37, mjVar38, mjVar39, mjVar40, mjVar41, mjVar42, mjVar43, mjVar44, mjVar45, mjVar46, mjVar47, mjVar48, mjVar49, mjVar50, mjVar51};
        mj[] values = values();
        f19652a = new mj[values.length];
        for (mj mjVar52 : values) {
            f19652a[mjVar52.zzab] = mjVar52;
        }
    }

    public mj(String str, int i, int i2, int i3, bvn bvnVar) {
        this.zzab = i2;
        int i4 = i3 - 1;
        if (i4 == 1) {
            bvnVar.getClass();
        } else if (i4 == 3) {
            bvnVar.getClass();
        }
        if (i3 == 1) {
            bvn bvnVar2 = bvn.zza;
            bvnVar.ordinal();
        }
    }

    public static mj[] values() {
        return (mj[]) f19653b.clone();
    }

    public final int zza() {
        return this.zzab;
    }
}
