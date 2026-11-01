package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Trace;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.akm;
import g.awf;
import g.cdg;
import g.ehy;
import g.fpq;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes3.dex */
public abstract class zzsy extends zzhw {
    public static final byte[] cq = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    public long cr;
    public boolean cs;
    public boolean ct;
    public zzrq cu;
    public boolean cv;
    public final float cw;
    public boolean cx;
    public ArrayDeque cy;
    public boolean cz;
    public final MediaCodec.BufferInfo da;
    public final zzhm db;
    public int dc;
    public float dd;
    public zzlm de;
    public int df;
    public zzad dg;
    public boolean dh;
    public boolean di;
    public final zzhm dj;
    public float dk;
    public final zzta dl;
    public boolean dm;
    public float dn;

    /* renamed from: do, reason: not valid java name */
    public akm f2do;
    public long dp;
    public boolean dq;
    public int dr;
    public boolean ds;
    public final zzsl dt;
    public zzrq du;
    public MediaFormat dv;
    public final ArrayDeque dw;
    public final ehy dx;
    public boolean dy;
    public boolean dz;
    public boolean ea;
    public long eb;
    public boolean ec;
    public zzad ed;
    public int ee;
    public boolean ef;
    public final zzhm eg;
    public zzsu eh;
    public int ei;
    public boolean ej;
    public final zzrd ek;
    public boolean el;
    public long em;
    public zzsq en;
    public boolean eo;
    public ByteBuffer ep;
    public zzad eq;
    public boolean er;
    public int es;
    public zzsn et;
    public zzhx eu;
    public boolean ev;

    public zzsy(int i, zzsl zzslVar, zzta zztaVar, boolean z, float f2) {
        super(i);
        this.dt = zzslVar;
        this.dl = zztaVar;
        this.cw = f2;
        this.dj = new zzhm(0, 0);
        this.db = new zzhm(0, 0);
        this.eg = new zzhm(2, 0);
        ehy ehyVar = new ehy(2, 0);
        ehyVar.f15569f = 32;
        this.dx = ehyVar;
        this.da = new MediaCodec.BufferInfo();
        this.dn = 1.0f;
        this.dk = 1.0f;
        this.dw = new ArrayDeque();
        this.f2do = akm.f10392a;
        ehyVar.zzj(0);
        ehyVar.zzc.order(ByteOrder.nativeOrder());
        this.ek = new zzrd();
        this.dd = -1.0f;
        this.df = 0;
        this.es = 0;
        this.dc = -1;
        this.ee = -1;
        this.eb = -9223372036854775807L;
        this.em = -9223372036854775807L;
        this.dp = -9223372036854775807L;
        this.cr = -9223372036854775807L;
        this.dr = 0;
        this.ei = 0;
        this.eu = new zzhx();
    }

    public void _b() {
    }

    public boolean _c(zzad zzadVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public void an(long j, boolean z) {
        this.ea = false;
        this.ef = false;
        if (this.dm) {
            this.dx.zzb();
            this.eg.zzb();
            this.er = false;
            this.ek.zzb();
        } else if (fb()) {
            ez();
        }
        zzej zzejVar = this.f2do.f10393b;
        if (zzejVar.zza() > 0) {
            this.dz = true;
        }
        zzejVar.zze();
        this.dw.clear();
    }

    public abstract zzsk ao(zzsq zzsqVar, zzad zzadVar, float f2);

    public void ap(zzhm zzhmVar) {
        throw null;
    }

    public void ar(long j) {
        this.cr = j;
        while (true) {
            ArrayDeque arrayDeque = this.dw;
            if (arrayDeque.isEmpty() || j < ((akm) arrayDeque.peek()).f10394c) {
                return;
            }
            akm akmVar = (akm) arrayDeque.poll();
            akmVar.getClass();
            fh(akmVar);
            as();
        }
    }

    public void as() {
    }

    public void at(long j, long j2, String str) {
        throw null;
    }

    public float ax(float f2, zzad[] zzadVarArr) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        if (r4 >= r0) goto L14;
     */
    @Override // com.google.android.gms.internal.ads.zzhw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void ay(zzad[] zzadVarArr, long j, long j2, zzur zzurVar) {
        if (this.f2do.f10396e == -9223372036854775807L) {
            fh(new akm(-9223372036854775807L, j, j2));
            return;
        }
        ArrayDeque arrayDeque = this.dw;
        if (arrayDeque.isEmpty()) {
            long j3 = this.em;
            if (j3 != -9223372036854775807L) {
                long j4 = this.cr;
                if (j4 != -9223372036854775807L) {
                }
            }
            fh(new akm(-9223372036854775807L, j, j2));
            if (this.f2do.f10396e != -9223372036854775807L) {
                as();
                return;
            }
            return;
        }
        arrayDeque.add(new akm(this.em, j, j2));
    }

    public void az() {
    }

    public zzhy bb(zzsq zzsqVar, zzad zzadVar, zzad zzadVar2) {
        throw null;
    }

    public abstract int bc(zzta zztaVar, zzad zzadVar);

    public void bd(Exception exc) {
        throw null;
    }

    public boolean bf(zzsq zzsqVar) {
        return true;
    }

    public boolean bh(zzhm zzhmVar) {
        return false;
    }

    public void bi() {
        this.dc = -1;
        this.db.zzc = null;
        this.ee = -1;
        this.ep = null;
        this.eb = -9223372036854775807L;
        this.dh = false;
        this.dq = false;
        this.ds = false;
        this.eo = false;
        this.cs = false;
        this.ej = false;
        this.em = -9223372036854775807L;
        this.dp = -9223372036854775807L;
        this.cr = -9223372036854775807L;
        this.dr = 0;
        this.ei = 0;
        this.es = this.ec ? 1 : 0;
    }

    public void bj() {
    }

    public zzsp bk(IllegalStateException illegalStateException, zzsq zzsqVar) {
        return new zzsp(illegalStateException, zzsqVar);
    }

    public void bl(zzad zzadVar, MediaFormat mediaFormat) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public void bm() {
        this.ed = null;
        fh(akm.f10392a);
        this.dw.clear();
        fb();
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public void bn() {
        try {
            fg();
            fi();
        } finally {
            this.cu = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    public void bo(boolean z, boolean z2) {
        this.eu = new zzhx();
    }

    public void bp(zzad zzadVar) {
    }

    public void bq(String str) {
        throw null;
    }

    public abstract boolean br(long j, long j2, zzsn zzsnVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzad zzadVar);

    public abstract List bu(zzta zztaVar, zzad zzadVar);

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0086, code lost:
    
        if (ex() == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b4, code lost:
    
        if (ex() == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c6, code lost:
    
        if (ex() == false) goto L73;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzhy bv(zzkj zzkjVar) {
        int i;
        boolean z = true;
        this.dz = true;
        zzad zzadVar = zzkjVar.zza;
        zzadVar.getClass();
        String str = zzadVar.zzo;
        if (str == null) {
            throw cp(new IllegalArgumentException("Sample MIME type is null."), zzadVar, false, 4005);
        }
        if (str.equals("video/av01") && !zzadVar.zzr.isEmpty()) {
            zzab zzb = zzadVar.zzb();
            zzb.zzM(null);
            zzadVar = zzb.zzaf();
        }
        zzad zzadVar2 = zzadVar;
        this.cu = zzkjVar.zzb;
        this.ed = zzadVar2;
        if (this.dm) {
            this.ev = true;
            return null;
        }
        zzsn zzsnVar = this.et;
        if (zzsnVar == null) {
            this.cy = null;
            ez();
            return null;
        }
        zzsq zzsqVar = this.en;
        zzsqVar.getClass();
        zzad zzadVar3 = this.eq;
        zzadVar3.getClass();
        zzrq zzrqVar = this.du;
        zzrq zzrqVar2 = this.cu;
        if (zzrqVar != zzrqVar2) {
            ey();
            return new zzhy(zzsqVar.zza, zzadVar3, zzadVar2, 0, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        }
        boolean z2 = zzrqVar2 != zzrqVar;
        zzdb.zzf(!z2 || zzen.zza >= 23);
        zzhy bb = bb(zzsqVar, zzadVar3, zzadVar2);
        int i2 = bb.zzd;
        if (i2 != 0) {
            i = 2;
            if (i2 == 1) {
                if (fa(zzadVar2)) {
                    this.eq = zzadVar2;
                    if (!z2) {
                        if (this.dq) {
                            this.dr = 1;
                            if (this.ct) {
                                this.ei = 3;
                            } else {
                                this.ei = 1;
                            }
                        }
                    }
                }
                i = 16;
            } else if (i2 != 2) {
                if (fa(zzadVar2)) {
                    this.eq = zzadVar2;
                    if (z2) {
                    }
                }
                i = 16;
            } else {
                if (fa(zzadVar2)) {
                    this.ec = true;
                    this.es = 1;
                    int i3 = this.df;
                    if (i3 != 2 && (i3 != 1 || zzadVar2.zzu != zzadVar3.zzu || zzadVar2.zzv != zzadVar3.zzv)) {
                        z = false;
                    }
                    this.ds = z;
                    this.eq = zzadVar2;
                    if (z2) {
                    }
                }
                i = 16;
            }
            return (bb.zzd != 0 || (this.et == zzsnVar && this.ei != 3)) ? bb : new zzhy(zzsqVar.zza, zzadVar3, zzadVar2, 0, i);
        }
        ey();
        i = 0;
        if (bb.zzd != 0) {
        }
    }

    public final boolean ew(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        zzad zzadVar = this.dg;
        return (zzadVar != null && Objects.equals(zzadVar.zzo, "audio/opus") && zzadm.zzf(j, j2)) ? false : true;
    }

    public final boolean ex() {
        if (this.dq) {
            this.dr = 1;
            if (this.ct) {
                this.ei = 3;
                return false;
            }
            this.ei = 2;
            return true;
        }
        zzrq zzrqVar = this.cu;
        zzrqVar.getClass();
        this.du = zzrqVar;
        this.dr = 0;
        this.ei = 0;
        return true;
    }

    public final void ey() {
        if (this.dq) {
            this.dr = 1;
            this.ei = 3;
        } else {
            fi();
            ez();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0434 A[Catch: Exception -> 0x0175, TryCatch #3 {Exception -> 0x0175, blocks: (B:292:0x016a, B:83:0x0178, B:85:0x017c, B:86:0x0186, B:88:0x018a, B:89:0x018f, B:91:0x0195, B:93:0x01a3, B:96:0x0202, B:97:0x01ab, B:99:0x01b3, B:100:0x01b9, B:102:0x01c1, B:103:0x01c7, B:105:0x01cf, B:106:0x01d5, B:108:0x01dd, B:109:0x01e3, B:112:0x0206, B:113:0x0213, B:115:0x0218, B:117:0x021c, B:118:0x0230, B:120:0x0234, B:122:0x023a, B:124:0x0240, B:125:0x024e, B:127:0x0254, B:128:0x025e, B:130:0x0263, B:131:0x026d, B:133:0x0272, B:134:0x027c, B:136:0x0280, B:137:0x028a, B:140:0x0294, B:141:0x02aa, B:143:0x02ae, B:145:0x02be, B:146:0x02c3, B:148:0x02c7, B:149:0x02cc, B:150:0x02d2, B:152:0x02d6, B:154:0x02e6, B:155:0x02f2, B:157:0x02f6, B:158:0x02fb, B:160:0x02ff, B:161:0x0304, B:163:0x0308, B:164:0x030d, B:166:0x0311, B:167:0x0316, B:169:0x031a, B:170:0x031f, B:172:0x0323, B:173:0x0328, B:175:0x032c, B:176:0x0331, B:178:0x0335, B:179:0x033a, B:181:0x033e, B:182:0x0343, B:184:0x0347, B:185:0x034c, B:187:0x0350, B:188:0x0355, B:190:0x0359, B:191:0x035e, B:193:0x0362, B:194:0x0367, B:196:0x036b, B:197:0x0370, B:199:0x0374, B:200:0x0379, B:201:0x0383, B:203:0x0389, B:204:0x0393, B:205:0x03bb, B:207:0x03c8, B:209:0x03d0, B:211:0x03da, B:213:0x03e2, B:215:0x03ea, B:218:0x042e, B:220:0x0434, B:223:0x043f, B:225:0x0445, B:228:0x0450, B:230:0x0456, B:233:0x0461, B:235:0x0467, B:239:0x04be, B:241:0x04c4, B:243:0x04ca, B:244:0x04d8, B:247:0x04ed, B:249:0x0474, B:251:0x047c, B:253:0x0484, B:255:0x048c, B:257:0x0494, B:259:0x049c, B:261:0x04a4, B:263:0x04ae, B:265:0x04b8, B:274:0x03f8, B:276:0x0400, B:279:0x040b, B:281:0x0415, B:283:0x041d, B:285:0x0425, B:296:0x04ef, B:297:0x04f4, B:303:0x04ff, B:74:0x0104), top: B:291:0x016a, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0445 A[Catch: Exception -> 0x0175, TryCatch #3 {Exception -> 0x0175, blocks: (B:292:0x016a, B:83:0x0178, B:85:0x017c, B:86:0x0186, B:88:0x018a, B:89:0x018f, B:91:0x0195, B:93:0x01a3, B:96:0x0202, B:97:0x01ab, B:99:0x01b3, B:100:0x01b9, B:102:0x01c1, B:103:0x01c7, B:105:0x01cf, B:106:0x01d5, B:108:0x01dd, B:109:0x01e3, B:112:0x0206, B:113:0x0213, B:115:0x0218, B:117:0x021c, B:118:0x0230, B:120:0x0234, B:122:0x023a, B:124:0x0240, B:125:0x024e, B:127:0x0254, B:128:0x025e, B:130:0x0263, B:131:0x026d, B:133:0x0272, B:134:0x027c, B:136:0x0280, B:137:0x028a, B:140:0x0294, B:141:0x02aa, B:143:0x02ae, B:145:0x02be, B:146:0x02c3, B:148:0x02c7, B:149:0x02cc, B:150:0x02d2, B:152:0x02d6, B:154:0x02e6, B:155:0x02f2, B:157:0x02f6, B:158:0x02fb, B:160:0x02ff, B:161:0x0304, B:163:0x0308, B:164:0x030d, B:166:0x0311, B:167:0x0316, B:169:0x031a, B:170:0x031f, B:172:0x0323, B:173:0x0328, B:175:0x032c, B:176:0x0331, B:178:0x0335, B:179:0x033a, B:181:0x033e, B:182:0x0343, B:184:0x0347, B:185:0x034c, B:187:0x0350, B:188:0x0355, B:190:0x0359, B:191:0x035e, B:193:0x0362, B:194:0x0367, B:196:0x036b, B:197:0x0370, B:199:0x0374, B:200:0x0379, B:201:0x0383, B:203:0x0389, B:204:0x0393, B:205:0x03bb, B:207:0x03c8, B:209:0x03d0, B:211:0x03da, B:213:0x03e2, B:215:0x03ea, B:218:0x042e, B:220:0x0434, B:223:0x043f, B:225:0x0445, B:228:0x0450, B:230:0x0456, B:233:0x0461, B:235:0x0467, B:239:0x04be, B:241:0x04c4, B:243:0x04ca, B:244:0x04d8, B:247:0x04ed, B:249:0x0474, B:251:0x047c, B:253:0x0484, B:255:0x048c, B:257:0x0494, B:259:0x049c, B:261:0x04a4, B:263:0x04ae, B:265:0x04b8, B:274:0x03f8, B:276:0x0400, B:279:0x040b, B:281:0x0415, B:283:0x041d, B:285:0x0425, B:296:0x04ef, B:297:0x04f4, B:303:0x04ff, B:74:0x0104), top: B:291:0x016a, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0456 A[Catch: Exception -> 0x0175, TryCatch #3 {Exception -> 0x0175, blocks: (B:292:0x016a, B:83:0x0178, B:85:0x017c, B:86:0x0186, B:88:0x018a, B:89:0x018f, B:91:0x0195, B:93:0x01a3, B:96:0x0202, B:97:0x01ab, B:99:0x01b3, B:100:0x01b9, B:102:0x01c1, B:103:0x01c7, B:105:0x01cf, B:106:0x01d5, B:108:0x01dd, B:109:0x01e3, B:112:0x0206, B:113:0x0213, B:115:0x0218, B:117:0x021c, B:118:0x0230, B:120:0x0234, B:122:0x023a, B:124:0x0240, B:125:0x024e, B:127:0x0254, B:128:0x025e, B:130:0x0263, B:131:0x026d, B:133:0x0272, B:134:0x027c, B:136:0x0280, B:137:0x028a, B:140:0x0294, B:141:0x02aa, B:143:0x02ae, B:145:0x02be, B:146:0x02c3, B:148:0x02c7, B:149:0x02cc, B:150:0x02d2, B:152:0x02d6, B:154:0x02e6, B:155:0x02f2, B:157:0x02f6, B:158:0x02fb, B:160:0x02ff, B:161:0x0304, B:163:0x0308, B:164:0x030d, B:166:0x0311, B:167:0x0316, B:169:0x031a, B:170:0x031f, B:172:0x0323, B:173:0x0328, B:175:0x032c, B:176:0x0331, B:178:0x0335, B:179:0x033a, B:181:0x033e, B:182:0x0343, B:184:0x0347, B:185:0x034c, B:187:0x0350, B:188:0x0355, B:190:0x0359, B:191:0x035e, B:193:0x0362, B:194:0x0367, B:196:0x036b, B:197:0x0370, B:199:0x0374, B:200:0x0379, B:201:0x0383, B:203:0x0389, B:204:0x0393, B:205:0x03bb, B:207:0x03c8, B:209:0x03d0, B:211:0x03da, B:213:0x03e2, B:215:0x03ea, B:218:0x042e, B:220:0x0434, B:223:0x043f, B:225:0x0445, B:228:0x0450, B:230:0x0456, B:233:0x0461, B:235:0x0467, B:239:0x04be, B:241:0x04c4, B:243:0x04ca, B:244:0x04d8, B:247:0x04ed, B:249:0x0474, B:251:0x047c, B:253:0x0484, B:255:0x048c, B:257:0x0494, B:259:0x049c, B:261:0x04a4, B:263:0x04ae, B:265:0x04b8, B:274:0x03f8, B:276:0x0400, B:279:0x040b, B:281:0x0415, B:283:0x041d, B:285:0x0425, B:296:0x04ef, B:297:0x04f4, B:303:0x04ff, B:74:0x0104), top: B:291:0x016a, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0467 A[Catch: Exception -> 0x0175, TryCatch #3 {Exception -> 0x0175, blocks: (B:292:0x016a, B:83:0x0178, B:85:0x017c, B:86:0x0186, B:88:0x018a, B:89:0x018f, B:91:0x0195, B:93:0x01a3, B:96:0x0202, B:97:0x01ab, B:99:0x01b3, B:100:0x01b9, B:102:0x01c1, B:103:0x01c7, B:105:0x01cf, B:106:0x01d5, B:108:0x01dd, B:109:0x01e3, B:112:0x0206, B:113:0x0213, B:115:0x0218, B:117:0x021c, B:118:0x0230, B:120:0x0234, B:122:0x023a, B:124:0x0240, B:125:0x024e, B:127:0x0254, B:128:0x025e, B:130:0x0263, B:131:0x026d, B:133:0x0272, B:134:0x027c, B:136:0x0280, B:137:0x028a, B:140:0x0294, B:141:0x02aa, B:143:0x02ae, B:145:0x02be, B:146:0x02c3, B:148:0x02c7, B:149:0x02cc, B:150:0x02d2, B:152:0x02d6, B:154:0x02e6, B:155:0x02f2, B:157:0x02f6, B:158:0x02fb, B:160:0x02ff, B:161:0x0304, B:163:0x0308, B:164:0x030d, B:166:0x0311, B:167:0x0316, B:169:0x031a, B:170:0x031f, B:172:0x0323, B:173:0x0328, B:175:0x032c, B:176:0x0331, B:178:0x0335, B:179:0x033a, B:181:0x033e, B:182:0x0343, B:184:0x0347, B:185:0x034c, B:187:0x0350, B:188:0x0355, B:190:0x0359, B:191:0x035e, B:193:0x0362, B:194:0x0367, B:196:0x036b, B:197:0x0370, B:199:0x0374, B:200:0x0379, B:201:0x0383, B:203:0x0389, B:204:0x0393, B:205:0x03bb, B:207:0x03c8, B:209:0x03d0, B:211:0x03da, B:213:0x03e2, B:215:0x03ea, B:218:0x042e, B:220:0x0434, B:223:0x043f, B:225:0x0445, B:228:0x0450, B:230:0x0456, B:233:0x0461, B:235:0x0467, B:239:0x04be, B:241:0x04c4, B:243:0x04ca, B:244:0x04d8, B:247:0x04ed, B:249:0x0474, B:251:0x047c, B:253:0x0484, B:255:0x048c, B:257:0x0494, B:259:0x049c, B:261:0x04a4, B:263:0x04ae, B:265:0x04b8, B:274:0x03f8, B:276:0x0400, B:279:0x040b, B:281:0x0415, B:283:0x041d, B:285:0x0425, B:296:0x04ef, B:297:0x04f4, B:303:0x04ff, B:74:0x0104), top: B:291:0x016a, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x04c4 A[Catch: Exception -> 0x0175, TryCatch #3 {Exception -> 0x0175, blocks: (B:292:0x016a, B:83:0x0178, B:85:0x017c, B:86:0x0186, B:88:0x018a, B:89:0x018f, B:91:0x0195, B:93:0x01a3, B:96:0x0202, B:97:0x01ab, B:99:0x01b3, B:100:0x01b9, B:102:0x01c1, B:103:0x01c7, B:105:0x01cf, B:106:0x01d5, B:108:0x01dd, B:109:0x01e3, B:112:0x0206, B:113:0x0213, B:115:0x0218, B:117:0x021c, B:118:0x0230, B:120:0x0234, B:122:0x023a, B:124:0x0240, B:125:0x024e, B:127:0x0254, B:128:0x025e, B:130:0x0263, B:131:0x026d, B:133:0x0272, B:134:0x027c, B:136:0x0280, B:137:0x028a, B:140:0x0294, B:141:0x02aa, B:143:0x02ae, B:145:0x02be, B:146:0x02c3, B:148:0x02c7, B:149:0x02cc, B:150:0x02d2, B:152:0x02d6, B:154:0x02e6, B:155:0x02f2, B:157:0x02f6, B:158:0x02fb, B:160:0x02ff, B:161:0x0304, B:163:0x0308, B:164:0x030d, B:166:0x0311, B:167:0x0316, B:169:0x031a, B:170:0x031f, B:172:0x0323, B:173:0x0328, B:175:0x032c, B:176:0x0331, B:178:0x0335, B:179:0x033a, B:181:0x033e, B:182:0x0343, B:184:0x0347, B:185:0x034c, B:187:0x0350, B:188:0x0355, B:190:0x0359, B:191:0x035e, B:193:0x0362, B:194:0x0367, B:196:0x036b, B:197:0x0370, B:199:0x0374, B:200:0x0379, B:201:0x0383, B:203:0x0389, B:204:0x0393, B:205:0x03bb, B:207:0x03c8, B:209:0x03d0, B:211:0x03da, B:213:0x03e2, B:215:0x03ea, B:218:0x042e, B:220:0x0434, B:223:0x043f, B:225:0x0445, B:228:0x0450, B:230:0x0456, B:233:0x0461, B:235:0x0467, B:239:0x04be, B:241:0x04c4, B:243:0x04ca, B:244:0x04d8, B:247:0x04ed, B:249:0x0474, B:251:0x047c, B:253:0x0484, B:255:0x048c, B:257:0x0494, B:259:0x049c, B:261:0x04a4, B:263:0x04ae, B:265:0x04b8, B:274:0x03f8, B:276:0x0400, B:279:0x040b, B:281:0x0415, B:283:0x041d, B:285:0x0425, B:296:0x04ef, B:297:0x04f4, B:303:0x04ff, B:74:0x0104), top: B:291:0x016a, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x04ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0474 A[Catch: Exception -> 0x0175, TryCatch #3 {Exception -> 0x0175, blocks: (B:292:0x016a, B:83:0x0178, B:85:0x017c, B:86:0x0186, B:88:0x018a, B:89:0x018f, B:91:0x0195, B:93:0x01a3, B:96:0x0202, B:97:0x01ab, B:99:0x01b3, B:100:0x01b9, B:102:0x01c1, B:103:0x01c7, B:105:0x01cf, B:106:0x01d5, B:108:0x01dd, B:109:0x01e3, B:112:0x0206, B:113:0x0213, B:115:0x0218, B:117:0x021c, B:118:0x0230, B:120:0x0234, B:122:0x023a, B:124:0x0240, B:125:0x024e, B:127:0x0254, B:128:0x025e, B:130:0x0263, B:131:0x026d, B:133:0x0272, B:134:0x027c, B:136:0x0280, B:137:0x028a, B:140:0x0294, B:141:0x02aa, B:143:0x02ae, B:145:0x02be, B:146:0x02c3, B:148:0x02c7, B:149:0x02cc, B:150:0x02d2, B:152:0x02d6, B:154:0x02e6, B:155:0x02f2, B:157:0x02f6, B:158:0x02fb, B:160:0x02ff, B:161:0x0304, B:163:0x0308, B:164:0x030d, B:166:0x0311, B:167:0x0316, B:169:0x031a, B:170:0x031f, B:172:0x0323, B:173:0x0328, B:175:0x032c, B:176:0x0331, B:178:0x0335, B:179:0x033a, B:181:0x033e, B:182:0x0343, B:184:0x0347, B:185:0x034c, B:187:0x0350, B:188:0x0355, B:190:0x0359, B:191:0x035e, B:193:0x0362, B:194:0x0367, B:196:0x036b, B:197:0x0370, B:199:0x0374, B:200:0x0379, B:201:0x0383, B:203:0x0389, B:204:0x0393, B:205:0x03bb, B:207:0x03c8, B:209:0x03d0, B:211:0x03da, B:213:0x03e2, B:215:0x03ea, B:218:0x042e, B:220:0x0434, B:223:0x043f, B:225:0x0445, B:228:0x0450, B:230:0x0456, B:233:0x0461, B:235:0x0467, B:239:0x04be, B:241:0x04c4, B:243:0x04ca, B:244:0x04d8, B:247:0x04ed, B:249:0x0474, B:251:0x047c, B:253:0x0484, B:255:0x048c, B:257:0x0494, B:259:0x049c, B:261:0x04a4, B:263:0x04ae, B:265:0x04b8, B:274:0x03f8, B:276:0x0400, B:279:0x040b, B:281:0x0415, B:283:0x041d, B:285:0x0425, B:296:0x04ef, B:297:0x04f4, B:303:0x04ff, B:74:0x0104), top: B:291:0x016a, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x051b A[Catch: zzsu -> 0x0061, TryCatch #1 {zzsu -> 0x0061, blocks: (B:27:0x0057, B:29:0x005b, B:30:0x0064, B:32:0x0069, B:320:0x006d, B:322:0x0083, B:323:0x0091, B:34:0x009d, B:36:0x00a5, B:38:0x00a9, B:40:0x00ad, B:42:0x00b6, B:61:0x0500, B:63:0x051b, B:64:0x053b, B:70:0x0542, B:71:0x0544, B:72:0x051e, B:311:0x0547, B:313:0x0548, B:316:0x054d, B:317:0x054e, B:318:0x0558, B:327:0x0094, B:328:0x009c, B:330:0x055a), top: B:26:0x0057, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0542 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x051e A[Catch: zzsu -> 0x0061, TryCatch #1 {zzsu -> 0x0061, blocks: (B:27:0x0057, B:29:0x005b, B:30:0x0064, B:32:0x0069, B:320:0x006d, B:322:0x0083, B:323:0x0091, B:34:0x009d, B:36:0x00a5, B:38:0x00a9, B:40:0x00ad, B:42:0x00b6, B:61:0x0500, B:63:0x051b, B:64:0x053b, B:70:0x0542, B:71:0x0544, B:72:0x051e, B:311:0x0547, B:313:0x0548, B:316:0x054d, B:317:0x054e, B:318:0x0558, B:327:0x0094, B:328:0x009c, B:330:0x055a), top: B:26:0x0057, inners: #2 }] */
    /* JADX WARN: Type inference failed for: r21v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v11 */
    /* JADX WARN: Type inference failed for: r21v12 */
    /* JADX WARN: Type inference failed for: r21v13 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r28v0, types: [com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzsy] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ez() {
        zzad zzadVar;
        ?? r21;
        zzsu zzsuVar;
        zzad zzadVar2;
        float ax;
        int i;
        boolean z;
        int i2;
        int i3;
        if (this.et != null || this.dm || (zzadVar = this.ed) == null) {
            return;
        }
        if (this.cu == null && _c(zzadVar)) {
            fg();
            String str = zzadVar.zzo;
            boolean equals = "audio/mp4a-latm".equals(str);
            ehy ehyVar = this.dx;
            if (equals || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
                ehyVar.f15569f = 32;
            } else {
                ehyVar.f15569f = 1;
            }
            this.dm = true;
            return;
        }
        zzrq zzrqVar = this.cu;
        this.du = zzrqVar;
        if (zzrqVar != null) {
            zzdb.zzf(true);
            zzrq zzrqVar2 = this.du;
            boolean z2 = zzrr.zza;
            zzrqVar2.zza();
        }
        int i4 = 0;
        try {
            if (this.du != null) {
                zzdb.zzb(zzadVar.zzo);
            }
            zzad zzadVar3 = this.ed;
            ArrayDeque arrayDeque = null;
            if (zzadVar3 == null) {
                throw null;
            }
            if (this.cy == null) {
                try {
                    List bu = bu(this.dl, zzadVar3);
                    bu.isEmpty();
                    this.cy = new ArrayDeque();
                    if (!bu.isEmpty()) {
                        this.cy.add((zzsq) bu.get(0));
                    }
                    this.eh = null;
                } catch (zztf e2) {
                    throw new zzsu(zzadVar3, (Throwable) e2, false, -49998);
                }
            }
            if (this.cy.isEmpty()) {
                throw new zzsu(zzadVar3, (Throwable) null, false, -49999);
            }
            ArrayDeque arrayDeque2 = this.cy;
            if (arrayDeque2 == null) {
                throw null;
            }
            while (this.et == null) {
                zzsq zzsqVar = (zzsq) arrayDeque2.peekFirst();
                if (zzsqVar == null) {
                    throw arrayDeque;
                }
                if (!bf(zzsqVar)) {
                    return;
                }
                try {
                    zzadVar2 = this.ed;
                } catch (Exception e3) {
                    e = e3;
                    r21 = arrayDeque;
                }
                if (zzadVar2 == null) {
                    throw arrayDeque;
                }
                String str2 = zzsqVar.zza;
                int i5 = zzen.zza;
                if (i5 < 23) {
                    ax = -1.0f;
                } else {
                    float f2 = this.dk;
                    zzad[] zzadVarArr = this.ca;
                    zzadVarArr.getClass();
                    ax = ax(f2, zzadVarArr);
                }
                if (ax <= this.cw) {
                    ax = -1.0f;
                }
                bp(zzadVar2);
                zzdc zzdcVar = this.by;
                zzdcVar.getClass();
                long zzb = zzdcVar.zzb();
                zzsk ao = ao(zzsqVar, zzadVar2, ax);
                if (i5 >= 31) {
                    try {
                        zzoj zzojVar = this.cm;
                        zzojVar.getClass();
                        fpq.a(ao, zzojVar);
                    } catch (Exception e4) {
                        e = e4;
                        r21 = arrayDeque;
                        zzdt.zzg("MediaCodecRenderer", "Failed to initialize decoder: ".concat(zzsqVar.zza), e);
                        arrayDeque2.removeFirst();
                        zzsu zzsuVar2 = new zzsu(zzadVar3, (Throwable) e, false, zzsqVar);
                        bd(zzsuVar2);
                        zzsuVar = this.eh;
                        if (zzsuVar != null) {
                            this.eh = zzsuVar2;
                        } else {
                            this.eh = new zzsu(zzsuVar.getMessage(), zzsuVar.getCause(), zzsuVar.zza, zzsuVar.zzc, zzsuVar.zzd);
                        }
                        if (!arrayDeque2.isEmpty()) {
                            throw this.eh;
                        }
                        arrayDeque = r21;
                        i4 = 0;
                    }
                }
                try {
                    Trace.beginSection("createCodec:" + str2);
                    zzsn zzd = this.dt.zzd(ao);
                    this.et = zzd;
                    zzd.zzs(new cdg(this));
                    Trace.endSection();
                    zzdc zzdcVar2 = this.by;
                    zzdcVar2.getClass();
                    long zzb2 = zzdcVar2.zzb();
                    if (zzsqVar.zze(zzadVar2)) {
                        r21 = arrayDeque;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("id=");
                        sb.append(zzadVar2.zza);
                        sb.append(", mimeType=");
                        sb.append(zzadVar2.zzo);
                        if (zzadVar2.zzn != null) {
                            sb.append(", container=");
                            sb.append(zzadVar2.zzn);
                        }
                        r21 = arrayDeque;
                        if (zzadVar2.zzj != -1) {
                            try {
                                sb.append(", bitrate=");
                                sb.append(zzadVar2.zzj);
                            } catch (Exception e5) {
                                e = e5;
                                r21 = r21;
                                zzdt.zzg("MediaCodecRenderer", "Failed to initialize decoder: ".concat(zzsqVar.zza), e);
                                arrayDeque2.removeFirst();
                                zzsu zzsuVar22 = new zzsu(zzadVar3, (Throwable) e, false, zzsqVar);
                                bd(zzsuVar22);
                                zzsuVar = this.eh;
                                if (zzsuVar != null) {
                                }
                                if (!arrayDeque2.isEmpty()) {
                                }
                            }
                        }
                        if (zzadVar2.zzk != null) {
                            sb.append(", codecs=");
                            sb.append(zzadVar2.zzk);
                        }
                        if (zzadVar2.zzs != null) {
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            while (true) {
                                zzw zzwVar = zzadVar2.zzs;
                                if (i4 >= zzwVar.zzb) {
                                    break;
                                }
                                UUID uuid = zzwVar.zza(i4).zza;
                                if (uuid.equals(zzj.zzb)) {
                                    linkedHashSet.add("cenc");
                                } else if (uuid.equals(zzj.zzc)) {
                                    linkedHashSet.add("clearkey");
                                } else if (uuid.equals(zzj.zze)) {
                                    linkedHashSet.add("playready");
                                } else if (uuid.equals(zzj.zzd)) {
                                    linkedHashSet.add("widevine");
                                } else if (uuid.equals(zzj.zza)) {
                                    linkedHashSet.add("universal");
                                } else {
                                    String obj = uuid.toString();
                                    StringBuilder sb2 = new StringBuilder();
                                    i3 = i4;
                                    sb2.append("unknown (");
                                    sb2.append(obj);
                                    sb2.append(")");
                                    linkedHashSet.add(sb2.toString());
                                    i4 = i3 + 1;
                                }
                                i3 = i4;
                                i4 = i3 + 1;
                            }
                            sb.append(", drm=[");
                            zzfwi.zzb(sb, linkedHashSet, ",");
                            sb.append(']');
                        }
                        if (zzadVar2.zzu != -1 && zzadVar2.zzv != -1) {
                            sb.append(", res=");
                            sb.append(zzadVar2.zzu);
                            sb.append("x");
                            sb.append(zzadVar2.zzv);
                        }
                        zzm zzmVar = zzadVar2.zzB;
                        if (zzmVar != null && (zzmVar.zze() || zzmVar.zzf())) {
                            sb.append(", color=");
                            sb.append(zzadVar2.zzB.zzd());
                        }
                        if (zzadVar2.zzw != -1.0f) {
                            sb.append(", fps=");
                            sb.append(zzadVar2.zzw);
                        }
                        if (zzadVar2.zzC != -1) {
                            sb.append(", channels=");
                            sb.append(zzadVar2.zzC);
                        }
                        if (zzadVar2.zzD != -1) {
                            sb.append(", sample_rate=");
                            sb.append(zzadVar2.zzD);
                        }
                        if (zzadVar2.zzd != null) {
                            sb.append(", language=");
                            sb.append(zzadVar2.zzd);
                        }
                        if (!zzadVar2.zzc.isEmpty()) {
                            sb.append(", labels=[");
                            zzfwi.zzb(sb, zzgae.zzb(zzadVar2.zzc, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzaa
                                @Override // com.google.android.gms.internal.ads.zzfwh
                                public final Object apply(Object obj2) {
                                    zzai zzaiVar = (zzai) obj2;
                                    int i6 = zzad.zzK;
                                    return awf.i(zzaiVar.zza, ": ", zzaiVar.zzb);
                                }
                            }), ",");
                            sb.append("]");
                        }
                        if (zzadVar2.zze != 0) {
                            sb.append(", selectionFlags=[");
                            int i6 = zzadVar2.zze;
                            ArrayList arrayList = new ArrayList();
                            if ((i6 & 1) != 0) {
                                arrayList.add("default");
                            }
                            if ((i6 & 2) != 0) {
                                arrayList.add("forced");
                            }
                            zzfwi.zzb(sb, arrayList, ",");
                            sb.append("]");
                        }
                        if (zzadVar2.zzf != 0) {
                            sb.append(", roleFlags=[");
                            int i7 = zzadVar2.zzf;
                            ArrayList arrayList2 = new ArrayList();
                            if ((i7 & 1) != 0) {
                                i2 = 32768;
                                arrayList2.add("main");
                            } else {
                                i2 = 32768;
                            }
                            if ((i7 & 2) != 0) {
                                arrayList2.add("alt");
                            }
                            if ((i7 & 4) != 0) {
                                arrayList2.add("supplementary");
                            }
                            if ((i7 & 8) != 0) {
                                arrayList2.add("commentary");
                            }
                            if ((i7 & 16) != 0) {
                                arrayList2.add("dub");
                            }
                            if ((i7 & 32) != 0) {
                                arrayList2.add("emergency");
                            }
                            if ((i7 & 64) != 0) {
                                arrayList2.add("caption");
                            }
                            if ((i7 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
                                arrayList2.add(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_SUBTITLE);
                            }
                            if ((i7 & 256) != 0) {
                                arrayList2.add("sign");
                            }
                            if ((i7 & 512) != 0) {
                                arrayList2.add("describes-video");
                            }
                            if ((i7 & 1024) != 0) {
                                arrayList2.add("describes-music");
                            }
                            if ((i7 & 2048) != 0) {
                                arrayList2.add("enhanced-intelligibility");
                            }
                            if ((i7 & 4096) != 0) {
                                arrayList2.add("transcribes-dialog");
                            }
                            if ((i7 & 8192) != 0) {
                                arrayList2.add("easy-read");
                            }
                            if ((i7 & 16384) != 0) {
                                arrayList2.add("trick-play");
                            }
                            if ((i7 & i2) != 0) {
                                arrayList2.add("auxiliary");
                            }
                            zzfwi.zzb(sb, arrayList2, ",");
                            sb.append("]");
                        } else {
                            i2 = 32768;
                        }
                        if ((zzadVar2.zzf & i2) != 0) {
                            sb.append(", auxiliaryTrackType=");
                            sb.append("undefined");
                        }
                        String sb3 = sb.toString();
                        Locale locale = Locale.US;
                        zzdt.zzf("MediaCodecRenderer", "Format exceeds selected codec's capabilities [" + sb3 + ", " + str2 + "]");
                        r21 = r21;
                    }
                    this.en = zzsqVar;
                    this.dd = ax;
                    this.eq = zzadVar2;
                    int i8 = zzen.zza;
                    if (i8 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str2)) {
                        String str3 = zzen.zzd;
                        if (str3.startsWith("SM-T585") || str3.startsWith("SM-A510") || str3.startsWith("SM-A520") || str3.startsWith("SM-J700")) {
                            i = 2;
                            this.df = i;
                            this.cv = i8 != 29 && "c2.android.aac.decoder".equals(str2);
                            this.ct = i8 > 23 && "OMX.google.vorbis.decoder".equals(str2);
                            this.el = i8 != 21 && "OMX.google.aac.decoder".equals(str2);
                            String str4 = zzsqVar.zza;
                            if (i8 <= 25) {
                                if ("OMX.rk.video_decoder.avc".equals(str4)) {
                                }
                                z = true;
                                this.cx = z;
                                if (this.et == null) {
                                    throw r21;
                                }
                                if (zzcV() == 2) {
                                    zzdc zzdcVar3 = this.by;
                                    zzdcVar3.getClass();
                                    this.eb = zzdcVar3.zzb() + 1000;
                                }
                                this.eu.zza++;
                                at(zzb2, zzb2 - zzb, str2);
                                arrayDeque = r21;
                                i4 = 0;
                            }
                            if ((i8 <= 29 || (!"OMX.broadcom.video_decoder.tunnel".equals(str4) && !"OMX.broadcom.video_decoder.tunnel.secure".equals(str4) && !"OMX.bcm.vdec.avc.tunnel".equals(str4) && !"OMX.bcm.vdec.avc.tunnel.secure".equals(str4) && !"OMX.bcm.vdec.hevc.tunnel".equals(str4) && !"OMX.bcm.vdec.hevc.tunnel.secure".equals(str4))) && (!"Amazon".equals(zzen.zzc) || !"AFTS".equals(zzen.zzd) || !zzsqVar.zzf)) {
                                z = false;
                                this.cx = z;
                                if (this.et == null) {
                                }
                            }
                            z = true;
                            this.cx = z;
                            if (this.et == null) {
                            }
                        }
                    }
                    if (i8 < 24) {
                        if (!"OMX.Nvidia.h264.decode".equals(str2)) {
                            if ("OMX.Nvidia.h264.decode.secure".equals(str2)) {
                            }
                        }
                        String str5 = zzen.zzb;
                        if ("flounder".equals(str5) || "flounder_lte".equals(str5) || "grouper".equals(str5) || "tilapia".equals(str5)) {
                            i = 1;
                            this.df = i;
                            this.cv = i8 != 29 && "c2.android.aac.decoder".equals(str2);
                            this.ct = i8 > 23 && "OMX.google.vorbis.decoder".equals(str2);
                            this.el = i8 != 21 && "OMX.google.aac.decoder".equals(str2);
                            String str42 = zzsqVar.zza;
                            if (i8 <= 25) {
                            }
                            if (i8 <= 29) {
                            }
                            z = false;
                            this.cx = z;
                            if (this.et == null) {
                            }
                        }
                    }
                    i = 0;
                    this.df = i;
                    this.cv = i8 != 29 && "c2.android.aac.decoder".equals(str2);
                    this.ct = i8 > 23 && "OMX.google.vorbis.decoder".equals(str2);
                    this.el = i8 != 21 && "OMX.google.aac.decoder".equals(str2);
                    String str422 = zzsqVar.zza;
                    if (i8 <= 25) {
                    }
                    if (i8 <= 29) {
                    }
                    z = false;
                    this.cx = z;
                    if (this.et == null) {
                    }
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            this.cy = arrayDeque;
        } catch (zzsu e6) {
            throw cp(e6, zzadVar, false, TTAdConstant.INIT_LOAD_VMP_SO_FAIL_CODE);
        }
    }

    public final boolean fa(zzad zzadVar) {
        if (zzen.zza >= 23 && this.et != null && this.ei != 3 && zzcV() != 0) {
            float f2 = this.dk;
            zzadVar.getClass();
            zzad[] zzadVarArr = this.ca;
            zzadVarArr.getClass();
            float ax = ax(f2, zzadVarArr);
            float f3 = this.dd;
            if (f3 != ax) {
                if (ax == -1.0f) {
                    ey();
                    return false;
                }
                if (f3 != -1.0f || ax > this.cw) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", ax);
                    zzsn zzsnVar = this.et;
                    zzsnVar.getClass();
                    zzsnVar.zzq(bundle);
                    this.dd = ax;
                }
            }
        }
        return true;
    }

    public final boolean fb() {
        if (this.et == null) {
            return false;
        }
        int i = this.ei;
        if (i == 3 || ((this.cv && !this.dy) || (this.ct && this.dh))) {
            fi();
            return true;
        }
        if (i == 2) {
            int i2 = zzen.zza;
            zzdb.zzf(i2 >= 23);
            if (i2 >= 23) {
                try {
                    zzrq zzrqVar = this.cu;
                    zzrqVar.getClass();
                    this.du = zzrqVar;
                    this.dr = 0;
                    this.ei = 0;
                } catch (zzig e2) {
                    zzdt.zzg("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e2);
                    fi();
                    return true;
                }
            }
        }
        fd();
        return false;
    }

    public final void fc() {
        int i = this.ei;
        if (i == 1) {
            fd();
            return;
        }
        if (i != 2) {
            if (i != 3) {
                this.ef = true;
                _b();
                return;
            } else {
                fi();
                ez();
                return;
            }
        }
        fd();
        zzrq zzrqVar = this.cu;
        zzrqVar.getClass();
        this.du = zzrqVar;
        this.dr = 0;
        this.ei = 0;
    }

    public final void fd() {
        try {
            zzsn zzsnVar = this.et;
            zzdb.zzb(zzsnVar);
            zzsnVar.zzj();
        } finally {
            bi();
        }
    }

    public final boolean fe(int i) {
        zzkj zzkjVar = this.cb;
        zzkjVar.zzb = null;
        zzkjVar.zza = null;
        zzhm zzhmVar = this.dj;
        zzhmVar.zzb();
        int co = co(zzkjVar, zzhmVar, i | 4);
        if (co == -5) {
            bv(zzkjVar);
            return true;
        }
        if (co != -4 || !zzhmVar.zzf()) {
            return false;
        }
        this.ea = true;
        fc();
        return false;
    }

    public final void ff() {
        bi();
        this.cy = null;
        this.en = null;
        this.eq = null;
        this.dv = null;
        this.di = false;
        this.dy = false;
        this.dd = -1.0f;
        this.df = 0;
        this.cv = false;
        this.ct = false;
        this.el = false;
        this.cx = false;
        this.ec = false;
        this.es = 0;
    }

    public final void fg() {
        this.ev = false;
        this.dx.zzb();
        this.eg.zzb();
        this.er = false;
        this.dm = false;
        this.ek.zzb();
    }

    public final void fh(akm akmVar) {
        this.f2do = akmVar;
        if (akmVar.f10396e != -9223372036854775807L) {
            this.cz = true;
        }
    }

    public final void fi() {
        try {
            zzsn zzsnVar = this.et;
            if (zzsnVar != null) {
                zzsnVar.zzm();
                this.eu.zzb++;
                zzsq zzsqVar = this.en;
                if (zzsqVar == null) {
                    throw null;
                }
                bq(zzsqVar.zza);
            }
            this.et = null;
            this.du = null;
            ff();
        } catch (Throwable th) {
            this.et = null;
            this.du = null;
            ff();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzln
    public void zzM(float f2, float f3) throws zzig {
        this.dn = f2;
        this.dk = f3;
        fa(this.eq);
    }

    /* JADX WARN: Code restructure failed: missing block: B:151:0x055b, code lost:
    
        android.os.Trace.endSection();
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x03be, code lost:
    
        if (r23.cx != false) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x03c0, code lost:
    
        r23.dh = true;
        r4.zzk(r23.dc, 0, 0, 0, 4);
        r23.dc = r2;
        r12.zzc = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x03d4, code lost:
    
        r23.dr = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0326, code lost:
    
        r17 = r2;
        r22 = r3;
        r21 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x032c, code lost:
    
        throw r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x02e0, code lost:
    
        if (r23.dg != null) goto L204;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:179:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x05a5  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x05b3  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x05c5  */
    /* JADX WARN: Type inference failed for: r3v10, types: [android.media.MediaFormat, com.google.android.gms.internal.ads.zzad, com.google.android.gms.internal.ads.zzrq, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v24, types: [com.google.android.gms.internal.ads.zzad, com.google.android.gms.internal.ads.zzrq, java.lang.Throwable, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [boolean, int] */
    @Override // com.google.android.gms.internal.ads.zzln
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void zzV(long j, long j2) throws zzig {
        boolean z;
        char c2;
        boolean z2;
        boolean z3;
        zzkj zzkjVar;
        ?? r3;
        zzhm zzhmVar;
        ?? r7;
        ArrayDeque arrayDeque;
        zzkj zzkjVar2;
        MediaCodec.BufferInfo bufferInfo;
        boolean br;
        int i;
        ?? r32;
        Throwable th;
        Throwable th2;
        zzhm zzhmVar2;
        int co;
        int zzb;
        ArrayDeque arrayDeque2 = this.dw;
        ehy ehyVar = this.dx;
        boolean z4 = true;
        try {
            try {
                if (this.ef) {
                    _b();
                    return;
                }
                int i2 = 2;
                if (this.ed != null || fe(2)) {
                    ez();
                    boolean z5 = this.dm;
                    zzkj zzkjVar3 = this.cb;
                    Throwable th3 = null;
                    zzhm zzhmVar3 = this.db;
                    try {
                        if (z5) {
                            try {
                                try {
                                    Trace.beginSection("bypassRender");
                                    while (true) {
                                        zzdb.zzf(this.ef ^ z4);
                                        if (ehyVar.i()) {
                                            zzkj zzkjVar4 = zzkjVar3;
                                            ByteBuffer byteBuffer = ehyVar.zzc;
                                            int i3 = this.ee;
                                            zzhm zzhmVar4 = zzhmVar3;
                                            int j3 = ehyVar.j();
                                            long j4 = ehyVar.zze;
                                            boolean ew = ew(this.cc, ehyVar.f15570g);
                                            boolean zzf = ehyVar.zzf();
                                            zzad zzadVar = this.dg;
                                            if (zzadVar == null) {
                                                throw th3;
                                            }
                                            zzkjVar = zzkjVar4;
                                            zzhmVar = zzhmVar4;
                                            if (!br(j, j2, null, byteBuffer, i3, 0, j3, j4, ew, zzf, zzadVar)) {
                                                break;
                                            }
                                            ar(ehyVar.f15570g);
                                            ehyVar.zzb();
                                            r3 = 0;
                                        } else {
                                            zzkjVar = zzkjVar3;
                                            r3 = th3;
                                            zzhmVar = zzhmVar3;
                                        }
                                        try {
                                            if (!this.ea) {
                                                z4 = true;
                                                boolean z6 = this.er;
                                                zzhm zzhmVar5 = this.eg;
                                                if (z6) {
                                                    zzdb.zzf(ehyVar.h(zzhmVar5));
                                                    r7 = 0;
                                                    this.er = false;
                                                } else {
                                                    r7 = 0;
                                                }
                                                if (this.ev) {
                                                    if (!ehyVar.i()) {
                                                        fg();
                                                        this.ev = r7;
                                                        ez();
                                                        if (!this.dm) {
                                                            break;
                                                        }
                                                    } else {
                                                        th3 = r3;
                                                        zzhmVar3 = zzhmVar;
                                                        zzkjVar3 = zzkjVar;
                                                    }
                                                }
                                                zzdb.zzf(!this.ea);
                                                zzkj zzkjVar5 = zzkjVar;
                                                zzkjVar5.zzb = r3;
                                                zzkjVar5.zza = r3;
                                                zzhmVar5.zzb();
                                                do {
                                                    zzhmVar5.zzb();
                                                    int co2 = co(zzkjVar5, zzhmVar5, r7);
                                                    if (co2 == -5) {
                                                        bv(zzkjVar5);
                                                        break;
                                                    }
                                                    if (co2 == -4) {
                                                        if (!zzhmVar5.zzf()) {
                                                            long max = Math.max(this.em, zzhmVar5.zze);
                                                            this.em = max;
                                                            if (zzQ() || zzhmVar.zzh()) {
                                                                this.dp = max;
                                                            }
                                                            if (this.dz) {
                                                                zzad zzadVar2 = this.ed;
                                                                if (zzadVar2 == null) {
                                                                    throw r3;
                                                                }
                                                                this.dg = zzadVar2;
                                                                if (Objects.equals(zzadVar2.zzo, "audio/opus") && !this.dg.zzr.isEmpty()) {
                                                                    int zza = zzadm.zza((byte[]) this.dg.zzr.get(r7));
                                                                    zzad zzadVar3 = this.dg;
                                                                    if (zzadVar3 == null) {
                                                                        throw r3;
                                                                    }
                                                                    zzab zzb2 = zzadVar3.zzb();
                                                                    zzb2.zzG(zza);
                                                                    this.dg = zzb2.zzaf();
                                                                }
                                                                bl(this.dg, r3);
                                                                this.dz = r7;
                                                            }
                                                            zzhmVar5.zzk();
                                                            zzad zzadVar4 = this.dg;
                                                            if (zzadVar4 != null && Objects.equals(zzadVar4.zzo, "audio/opus")) {
                                                                if (zzhmVar5.zze()) {
                                                                    zzhmVar5.zza = this.dg;
                                                                    ap(zzhmVar5);
                                                                }
                                                                if (zzadm.zzf(this.cc, zzhmVar5.zze)) {
                                                                    zzrd zzrdVar = this.ek;
                                                                    zzad zzadVar5 = this.dg;
                                                                    if (zzadVar5 == null) {
                                                                        throw r3;
                                                                    }
                                                                    zzrdVar.zza(zzhmVar5, zzadVar5.zzr);
                                                                }
                                                            }
                                                            if (ehyVar.i()) {
                                                                long j5 = this.cc;
                                                                if (ew(j5, ehyVar.f15570g) != ew(j5, zzhmVar5.zze)) {
                                                                    break;
                                                                }
                                                            }
                                                        } else {
                                                            this.ea = true;
                                                            this.dp = this.em;
                                                            break;
                                                        }
                                                    } else if (zzQ()) {
                                                        this.dp = this.em;
                                                    }
                                                } while (ehyVar.h(zzhmVar5));
                                                this.er = true;
                                                if (ehyVar.i()) {
                                                    ehyVar.zzk();
                                                }
                                                if (!ehyVar.i() && !this.ea && !this.ev) {
                                                    break;
                                                }
                                                th3 = r3;
                                                zzkjVar3 = zzkjVar5;
                                                zzhmVar3 = zzhmVar;
                                            } else {
                                                this.ef = true;
                                                break;
                                            }
                                        } catch (IllegalStateException e2) {
                                            e = e2;
                                            c2 = 0;
                                            z2 = e instanceof MediaCodec.CodecException;
                                            if (!z2) {
                                            }
                                            bd(e);
                                            if (z2) {
                                            }
                                            if (z3) {
                                            }
                                            zzsp bk = bk(e, this.en);
                                            throw cp(bk, this.ed, z3, bk.zzb != 1101 ? 4006 : 4003);
                                        }
                                    }
                                    Trace.endSection();
                                } catch (MediaCodec.CryptoException e3) {
                                    e = e3;
                                    z = false;
                                    throw cp(e, this.ed, z, zzen.zzl(e.getErrorCode()));
                                }
                            } catch (IllegalStateException e4) {
                                e = e4;
                            }
                        } else {
                            zzkj zzkjVar6 = zzkjVar3;
                            Throwable th4 = null;
                            zzhm zzhmVar6 = zzhmVar3;
                            boolean z7 = false;
                            if (this.et != null) {
                                zzdc zzdcVar = this.by;
                                zzdcVar.getClass();
                                zzdcVar.zzb();
                                Trace.beginSection("drainAndFeed");
                                while (true) {
                                    zzsn zzsnVar = this.et;
                                    if (zzsnVar == null) {
                                        throw th4;
                                    }
                                    boolean z8 = this.ee >= 0;
                                    MediaCodec.BufferInfo bufferInfo2 = this.da;
                                    if (!z8) {
                                        if (this.el && this.dh) {
                                            try {
                                                zzb = zzsnVar.zzb(bufferInfo2);
                                            } catch (IllegalStateException unused) {
                                                fc();
                                                if (this.ef) {
                                                    fi();
                                                }
                                                arrayDeque = arrayDeque2;
                                                zzkjVar2 = zzkjVar6;
                                                th2 = th4;
                                                i = -1;
                                                r32 = th2;
                                                while (true) {
                                                    zzsn zzsnVar2 = this.et;
                                                    if (zzsnVar2 == null || this.dr == 2 || this.ea) {
                                                        break;
                                                    }
                                                    if (this.dc < 0) {
                                                        int zza2 = zzsnVar2.zza();
                                                        this.dc = zza2;
                                                        if (zza2 < 0) {
                                                            break;
                                                        }
                                                        zzhmVar2 = zzhmVar6;
                                                        zzhmVar2.zzc = zzsnVar2.zzf(zza2);
                                                        zzhmVar2.zzb();
                                                    } else {
                                                        zzhmVar2 = zzhmVar6;
                                                    }
                                                    if (this.dr == 1) {
                                                        break;
                                                    }
                                                    try {
                                                        if (this.ds) {
                                                            this.ds = false;
                                                            ByteBuffer byteBuffer2 = zzhmVar2.zzc;
                                                            if (byteBuffer2 == null) {
                                                                throw r32;
                                                            }
                                                            byteBuffer2.put(cq);
                                                            zzsnVar2.zzk(this.dc, 0, 38, 0L, 0);
                                                            this.dc = i;
                                                            zzhmVar2.zzc = r32;
                                                            this.dq = true;
                                                            zzhmVar6 = zzhmVar2;
                                                        } else {
                                                            z = false;
                                                            c2 = 0;
                                                            if (this.es == 1) {
                                                                int i4 = 0;
                                                                while (true) {
                                                                    zzad zzadVar6 = this.eq;
                                                                    if (zzadVar6 == null) {
                                                                        throw r32;
                                                                    }
                                                                    if (i4 >= zzadVar6.zzr.size()) {
                                                                        this.es = 2;
                                                                        break;
                                                                    }
                                                                    byte[] bArr = (byte[]) this.eq.zzr.get(i4);
                                                                    ByteBuffer byteBuffer3 = zzhmVar2.zzc;
                                                                    if (byteBuffer3 == null) {
                                                                        throw r32;
                                                                    }
                                                                    byteBuffer3.put(bArr);
                                                                    i4++;
                                                                }
                                                            }
                                                            ByteBuffer byteBuffer4 = zzhmVar2.zzc;
                                                            if (byteBuffer4 == null) {
                                                                throw r32;
                                                            }
                                                            int position = byteBuffer4.position();
                                                            zzkj zzkjVar7 = zzkjVar2;
                                                            zzkjVar7.zzb = r32;
                                                            zzkjVar7.zza = r32;
                                                            try {
                                                                co = co(zzkjVar7, zzhmVar2, 0);
                                                            } catch (zzhl e5) {
                                                                bd(e5);
                                                                fe(0);
                                                                fd();
                                                            }
                                                            if (co != -3) {
                                                                if (co == -5) {
                                                                    if (this.es == 2) {
                                                                        zzhmVar2.zzb();
                                                                        this.es = 1;
                                                                    }
                                                                    bv(zzkjVar7);
                                                                } else if (zzhmVar2.zzf()) {
                                                                    this.dp = this.em;
                                                                    if (this.es == 2) {
                                                                        zzhmVar2.zzb();
                                                                        this.es = 1;
                                                                    }
                                                                    this.ea = true;
                                                                    if (!this.dq) {
                                                                        fc();
                                                                    } else if (!this.cx) {
                                                                        this.dh = true;
                                                                        zzsnVar2.zzk(this.dc, 0, 0, 0L, 4);
                                                                        this.dc = i;
                                                                        zzhmVar2.zzc = r32;
                                                                    }
                                                                } else if (!this.dq && !zzhmVar2.zzg()) {
                                                                    zzhmVar2.zzb();
                                                                    if (this.es == 2) {
                                                                        this.es = 1;
                                                                    }
                                                                } else if (bh(zzhmVar2)) {
                                                                    zzhmVar2.zzb();
                                                                    this.eu.zzd++;
                                                                } else {
                                                                    boolean zzl = zzhmVar2.zzl();
                                                                    if (zzl) {
                                                                        zzhmVar2.zzb.zzb(position);
                                                                    }
                                                                    long j6 = zzhmVar2.zze;
                                                                    if (this.dz) {
                                                                        if (arrayDeque.isEmpty()) {
                                                                            zzej zzejVar = this.f2do.f10393b;
                                                                            zzad zzadVar7 = this.ed;
                                                                            if (zzadVar7 == null) {
                                                                                throw r32;
                                                                            }
                                                                            zzejVar.zzd(j6, zzadVar7);
                                                                        } else {
                                                                            zzej zzejVar2 = ((akm) arrayDeque.peekLast()).f10393b;
                                                                            zzad zzadVar8 = this.ed;
                                                                            if (zzadVar8 == null) {
                                                                                throw r32;
                                                                            }
                                                                            zzejVar2.zzd(j6, zzadVar8);
                                                                        }
                                                                        this.dz = false;
                                                                    }
                                                                    long max2 = Math.max(this.em, j6);
                                                                    this.em = max2;
                                                                    if (zzQ() || zzhmVar2.zzh()) {
                                                                        this.dp = max2;
                                                                    }
                                                                    zzhmVar2.zzk();
                                                                    if (zzhmVar2.zze()) {
                                                                        ap(zzhmVar2);
                                                                    }
                                                                    bj();
                                                                    az();
                                                                    if (zzl) {
                                                                        zzsnVar2.zzl(this.dc, 0, zzhmVar2.zzb, j6, 0);
                                                                    } else {
                                                                        int i5 = this.dc;
                                                                        ByteBuffer byteBuffer5 = zzhmVar2.zzc;
                                                                        if (byteBuffer5 == null) {
                                                                            throw r32;
                                                                        }
                                                                        zzsnVar2.zzk(i5, 0, byteBuffer5.limit(), j6, 0);
                                                                    }
                                                                    this.dc = i;
                                                                    zzhmVar2.zzc = r32;
                                                                    this.dq = true;
                                                                    this.es = 0;
                                                                    this.eu.zzc++;
                                                                }
                                                                zzhmVar6 = zzhmVar2;
                                                                zzkjVar2 = zzkjVar7;
                                                            } else if (zzQ()) {
                                                                this.dp = this.em;
                                                            }
                                                        }
                                                    } catch (IllegalStateException e6) {
                                                        e = e6;
                                                        c2 = 0;
                                                        z2 = e instanceof MediaCodec.CodecException;
                                                        if (!z2) {
                                                            StackTraceElement[] stackTrace = e.getStackTrace();
                                                            if (stackTrace.length <= 0 || !stackTrace[c2].getClassName().equals("android.media.MediaCodec")) {
                                                                throw e;
                                                            }
                                                        }
                                                        bd(e);
                                                        z3 = !z2 && ((MediaCodec.CodecException) e).isRecoverable();
                                                        if (z3) {
                                                            fi();
                                                        }
                                                        zzsp bk2 = bk(e, this.en);
                                                        throw cp(bk2, this.ed, z3, bk2.zzb != 1101 ? 4006 : 4003);
                                                    }
                                                    e = e6;
                                                    c2 = 0;
                                                    z2 = e instanceof MediaCodec.CodecException;
                                                    if (!z2) {
                                                    }
                                                    bd(e);
                                                    if (z2) {
                                                    }
                                                    if (z3) {
                                                    }
                                                    zzsp bk22 = bk(e, this.en);
                                                    throw cp(bk22, this.ed, z3, bk22.zzb != 1101 ? 4006 : 4003);
                                                }
                                            }
                                        } else {
                                            zzb = zzsnVar.zzb(bufferInfo2);
                                        }
                                        if (zzb >= 0) {
                                            if (!this.eo) {
                                                if (bufferInfo2.size == 0 && (bufferInfo2.flags & 4) != 0) {
                                                    fc();
                                                    break;
                                                }
                                                this.ee = zzb;
                                                ByteBuffer zzg = zzsnVar.zzg(zzb);
                                                this.ep = zzg;
                                                if (zzg != null) {
                                                    zzg.position(bufferInfo2.offset);
                                                    this.ep.limit(bufferInfo2.offset + bufferInfo2.size);
                                                }
                                                long j7 = bufferInfo2.presentationTimeUs;
                                                this.cs = j7 < this.cc;
                                                long j8 = this.dp;
                                                this.ej = j8 != -9223372036854775807L && j8 <= j7;
                                                zzad zzadVar9 = (zzad) this.f2do.f10393b.zzc(j7);
                                                if (zzadVar9 == null && this.cz && this.dv != null) {
                                                    zzadVar9 = (zzad) this.f2do.f10393b.zzb();
                                                }
                                                if (zzadVar9 != null) {
                                                    this.dg = zzadVar9;
                                                } else if (this.di) {
                                                }
                                                zzad zzadVar10 = this.dg;
                                                if (zzadVar10 == null) {
                                                    throw th4;
                                                }
                                                bl(zzadVar10, this.dv);
                                                this.di = z7;
                                                this.cz = z7;
                                            } else {
                                                this.eo = z7;
                                                zzsnVar.zzo(zzb, z7);
                                            }
                                        } else if (zzb == -2) {
                                            this.dy = z4;
                                            zzsn zzsnVar3 = this.et;
                                            if (zzsnVar3 == null) {
                                                throw th4;
                                            }
                                            MediaFormat zzc = zzsnVar3.zzc();
                                            if (this.df != 0 && zzc.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_WIDTH) == 32 && zzc.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_HEIGHT) == 32) {
                                                this.eo = z4;
                                            } else {
                                                this.dv = zzc;
                                                this.di = z4;
                                            }
                                        } else if (this.cx && (this.ea || this.dr == i2)) {
                                            fc();
                                        }
                                    }
                                    if (this.el && this.dh) {
                                        try {
                                            ByteBuffer byteBuffer6 = this.ep;
                                            zzkj zzkjVar8 = zzkjVar6;
                                            try {
                                                int i6 = this.ee;
                                                int i7 = bufferInfo2.flags;
                                                long j9 = bufferInfo2.presentationTimeUs;
                                                boolean z9 = this.cs;
                                                boolean z10 = this.ej;
                                                zzad zzadVar11 = this.dg;
                                                if (zzadVar11 == null) {
                                                    break;
                                                }
                                                arrayDeque = arrayDeque2;
                                                bufferInfo = bufferInfo2;
                                                zzkjVar2 = zzkjVar8;
                                                try {
                                                    br = br(j, j2, zzsnVar, byteBuffer6, i6, i7, 1, j9, z9, z10, zzadVar11);
                                                } catch (IllegalStateException unused2) {
                                                    th = null;
                                                }
                                            } catch (IllegalStateException unused3) {
                                                arrayDeque = arrayDeque2;
                                                th = th4;
                                                zzkjVar2 = zzkjVar8;
                                            }
                                        } catch (IllegalStateException unused4) {
                                            arrayDeque = arrayDeque2;
                                            th = th4;
                                            zzkjVar2 = zzkjVar6;
                                        }
                                        fc();
                                        if (this.ef) {
                                            fi();
                                        }
                                        th2 = th;
                                        i = -1;
                                        r32 = th2;
                                    } else {
                                        arrayDeque = arrayDeque2;
                                        Throwable th5 = th4;
                                        zzkjVar2 = zzkjVar6;
                                        bufferInfo = bufferInfo2;
                                        ByteBuffer byteBuffer7 = this.ep;
                                        int i8 = this.ee;
                                        int i9 = bufferInfo.flags;
                                        long j10 = bufferInfo.presentationTimeUs;
                                        boolean z11 = this.cs;
                                        boolean z12 = this.ej;
                                        zzad zzadVar12 = this.dg;
                                        if (zzadVar12 == null) {
                                            throw th5;
                                        }
                                        br = br(j, j2, zzsnVar, byteBuffer7, i8, i9, 1, j10, z11, z12, zzadVar12);
                                    }
                                    if (!br) {
                                        i = -1;
                                        r32 = 0;
                                        break;
                                    }
                                    ar(bufferInfo.presentationTimeUs);
                                    int i10 = bufferInfo.flags & 4;
                                    i = -1;
                                    this.ee = -1;
                                    r32 = 0;
                                    th4 = null;
                                    this.ep = null;
                                    if (i10 != 0) {
                                        fc();
                                        break;
                                    }
                                    arrayDeque2 = arrayDeque;
                                    zzkjVar6 = zzkjVar2;
                                    z4 = true;
                                    i2 = 2;
                                    z7 = false;
                                }
                            } else {
                                zzhx zzhxVar = this.eu;
                                int i11 = zzhxVar.zzd;
                                zzwg zzwgVar = this.ch;
                                zzwgVar.getClass();
                                zzhxVar.zzd = i11 + zzwgVar.zzb(j - this.cd);
                                fe(1);
                            }
                        }
                        this.eu.zza();
                    } catch (MediaCodec.CryptoException e7) {
                        e = e7;
                        throw cp(e, this.ed, z, zzen.zzl(e.getErrorCode()));
                    } catch (IllegalStateException e8) {
                        e = e8;
                        z2 = e instanceof MediaCodec.CodecException;
                        if (!z2) {
                        }
                        bd(e);
                        if (z2) {
                        }
                        if (z3) {
                        }
                        zzsp bk222 = bk(e, this.en);
                        throw cp(bk222, this.ed, z3, bk222.zzb != 1101 ? 4006 : 4003);
                    }
                }
            } catch (IllegalStateException e9) {
                e = e9;
            }
        } catch (MediaCodec.CryptoException e10) {
            e = e10;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public boolean zzW() {
        return this.ef;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public boolean zzX() {
        boolean zze;
        if (this.ed != null) {
            if (zzQ()) {
                zze = this.cj;
            } else {
                zzwg zzwgVar = this.ch;
                zzwgVar.getClass();
                zze = zzwgVar.zze();
            }
            if (!zze) {
                if (!(this.ee >= 0)) {
                    if (this.eb != -9223372036854775807L) {
                        zzdc zzdcVar = this.by;
                        zzdcVar.getClass();
                        if (zzdcVar.zzb() >= this.eb) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzlq
    public final int zzY(zzad zzadVar) throws zzig {
        try {
            return bc(this.dl, zzadVar);
        } catch (zztf e2) {
            throw cp(e2, zzadVar, false, 4002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzlq
    public final int zze() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzli
    public void zzu(int i, Object obj) throws zzig {
        if (i == 11) {
            this.de = (zzlm) obj;
        }
    }
}
