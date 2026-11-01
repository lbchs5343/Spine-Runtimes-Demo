package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class akh implements yu {
    public final dsg aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f10380ab;
    public int o;
    public long p;
    public gqi q;
    public fbm r;
    public int s;
    public boolean t;
    public final gqc u;
    public int v;
    public int w;
    public int[] x = new int[5];
    public final dsg y;
    public int z;

    public akh(gqc gqcVar, dsg dsgVar) {
        this.u = gqcVar;
        this.y = dsgVar;
        this.aa = dsgVar.u();
    }

    @Override // g.yu
    public final long a() {
        return this.p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v16, types: [int[]] */
    /* JADX WARN: Type inference failed for: r2v19, types: [long[]] */
    @Override // g.yu
    public final void b() {
        short[] sArr;
        fbm fbmVar = this.r;
        if (fbmVar == null || this.t) {
            return;
        }
        fcn fcnVar = fbmVar.f16521f;
        int i = this.v;
        dsg dsgVar = (dsg) this.u.z;
        switch (fcnVar.af) {
            case 0:
                this.x[0] = fcn.ai(i);
                this.p = ((ByteBuffer) dsgVar.f14704a).getShort();
                break;
            case 1:
                this.x[0] = fcn.ai(i);
                this.p = ((ByteBuffer) dsgVar.f14704a).getShort() << ((i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) == 21 ? (char) 16 : '0');
                break;
            case 2:
                this.x[0] = fcn.ai(i);
                this.w = dsgVar.q();
                break;
            case 3:
                int[] iArr = this.x;
                iArr[0] = fcn.ai(i);
                int q = dsgVar.q();
                iArr[1] = q & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                iArr[2] = fcn.ai(q);
                break;
            case 4:
                int[] iArr2 = this.x;
                iArr2[0] = fcn.ai(i);
                iArr2[1] = dsgVar.q() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                this.p = (byte) (r1 >> 8);
                break;
            case 5:
                int[] iArr3 = this.x;
                iArr3[0] = fcn.ak(i);
                iArr3[1] = fcn.ag(i);
                this.s = ((ByteBuffer) dsgVar.f14704a).getShort() + this.o;
                break;
            case 6:
                int[] iArr4 = this.x;
                iArr4[0] = fcn.ak(i);
                iArr4[1] = fcn.ag(i);
                this.p = ((ByteBuffer) dsgVar.f14704a).getShort();
                break;
            case 7:
                int[] iArr5 = this.x;
                iArr5[0] = fcn.ak(i);
                iArr5[1] = fcn.ag(i);
                this.w = dsgVar.q();
                this.p = 0L;
                break;
            case 8:
                this.s = ((ByteBuffer) dsgVar.f14704a).getInt() + this.o;
                break;
            case 9:
                int[] iArr6 = this.x;
                iArr6[0] = dsgVar.q();
                iArr6[1] = dsgVar.q();
                break;
            case 10:
                break;
            case 11:
                this.x[0] = fcn.ai(i);
                this.p = ((ByteBuffer) dsgVar.f14704a).getInt();
                break;
            case 12:
                this.x[0] = fcn.ai(i);
                this.s = ((ByteBuffer) dsgVar.f14704a).getInt() + this.o;
                break;
            case 13:
                this.x[0] = fcn.ai(i);
                this.w = ((ByteBuffer) dsgVar.f14704a).getInt();
                break;
            case 14:
                fcn.ah(this, i, dsgVar);
                break;
            case 15:
                fcn.aj(this, i, dsgVar);
                break;
            case 16:
                fcn.ah(this, i, dsgVar);
                this.s = dsgVar.q();
                break;
            case 17:
                fcn.aj(this, i, dsgVar);
                this.s = dsgVar.q();
                break;
            case 18:
                this.x[0] = fcn.ai(i);
                this.p = ((ByteBuffer) dsgVar.f14704a).getLong();
                break;
            case 19:
                int q2 = dsgVar.q();
                ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
                int i2 = byteBuffer.getInt();
                int[] iArr7 = new int[q2];
                int[] iArr8 = new int[q2];
                for (int i3 = 0; i3 < q2; i3++) {
                    iArr8[i3] = byteBuffer.getInt();
                    iArr7[i3] = i2 + i3;
                }
                this.q = new ddo(q2, iArr7, iArr8);
                this.f10380ab = (q2 * 2) + 4;
                break;
            case 20:
                int q3 = dsgVar.q();
                ByteBuffer byteBuffer2 = (ByteBuffer) dsgVar.f14704a;
                int[] iArr9 = new int[q3];
                for (int i4 = 0; i4 < q3; i4++) {
                    iArr9[i4] = byteBuffer2.getInt();
                }
                int[] iArr10 = new int[q3];
                for (int i5 = 0; i5 < q3; i5++) {
                    iArr10[i5] = byteBuffer2.getInt();
                }
                this.q = new ddo(q3, iArr9, iArr10);
                this.f10380ab = (q3 * 4) + 2;
                break;
            case 21:
                int[] iArr11 = this.x;
                iArr11[0] = fcn.ak(i);
                iArr11[1] = fcn.ag(i);
                break;
            case 22:
                int q4 = dsgVar.q();
                ByteBuffer byteBuffer3 = (ByteBuffer) dsgVar.f14704a;
                int i6 = byteBuffer3.getInt();
                int i7 = 0;
                if (q4 == 0) {
                    sArr = new byte[0];
                } else if (q4 == 1) {
                    byte[] bArr = new byte[i6];
                    byteBuffer3.get(bArr);
                    if (i6 % 2 != 0) {
                        dsgVar.aa();
                    }
                    sArr = bArr;
                } else if (q4 == 2) {
                    sArr = new short[i6];
                    while (i7 < i6) {
                        sArr[i7] = byteBuffer3.getShort();
                        i7++;
                    }
                } else if (q4 == 4) {
                    sArr = new int[i6];
                    while (i7 < i6) {
                        sArr[i7] = byteBuffer3.getInt();
                        i7++;
                    }
                } else {
                    if (q4 != 8) {
                        throw new beo(awf.ac(q4, "Unexpected element size in FILL_ARRAY_DATA_PAYLOAD: "));
                    }
                    sArr = new long[i6];
                    while (i7 < i6) {
                        sArr[i7] = byteBuffer3.getLong();
                        i7++;
                    }
                }
                this.f10380ab = (((i6 * q4) + 1) / 2) + 4;
                this.q = new cor(i6, q4, sArr);
                break;
            case 23:
                this.x[0] = fcn.ak(i);
                this.p = (((i >> 12) & 15) << 28) >> 28;
                break;
            case 24:
                this.x[0] = fcn.ai(i);
                break;
            case 25:
                this.s = this.o + ((byte) (i >> 8));
                break;
            case 26:
                this.s = ((ByteBuffer) dsgVar.f14704a).getShort() + this.o;
                break;
            case 27:
                int[] iArr12 = this.x;
                iArr12[0] = fcn.ai(i);
                iArr12[1] = dsgVar.q();
                break;
            default:
                this.x[0] = fcn.ai(i);
                this.s = ((ByteBuffer) dsgVar.f14704a).getShort() + this.o;
                break;
        }
        this.t = true;
    }

    @Override // g.yu
    public final fw c(int i) {
        return this.y.p(i);
    }

    @Override // g.yu
    public final ful d() {
        int i = this.w;
        esi esiVar = new esi();
        dsg dsgVar = this.y;
        esiVar.f16085e = ((((eyc) dsgVar.f14705b).f16359b & 65535) << 16) | (65535 & i);
        esiVar.f16086f = i;
        esiVar.i = dsgVar;
        return esiVar;
    }

    @Override // g.yu
    public final enn e() {
        return this.r.f16518c;
    }

    @Override // g.yu
    public final cba f() {
        int i = this.w;
        flq flqVar = new flq(null);
        dsg dsgVar = this.y;
        flqVar.f17004g = dsgVar.g(dsgVar.l(flqVar, i));
        return flqVar;
    }

    @Override // g.yu
    public final String g() {
        return this.y.g(this.w);
    }

    @Override // g.yu
    public final int getOffset() {
        return this.o;
    }

    @Override // g.yu
    public final int getTarget() {
        return this.s;
    }

    @Override // g.yu
    public final String h() {
        return this.y.z(this.w);
    }

    @Override // g.yu
    public final int i() {
        return this.z;
    }

    @Override // g.yu
    public final dkb j() {
        int i = this.w;
        dsg dsgVar = this.y;
        dsgVar.m((i * 4) + ((eyc) dsgVar.f14705b).f16358a.f10766a);
        dsgVar.m(((ByteBuffer) dsgVar.f14704a).getInt());
        return new dkb(fso.j(dsgVar, this.aa));
    }

    @Override // g.yu
    public final int k() {
        return -1;
    }

    @Override // g.yu
    public final gqi l() {
        return this.q;
    }

    @Override // g.yu
    public final int m(int i) {
        return this.x[i];
    }

    @Override // g.yu
    public final cqf n() {
        fbm fbmVar = this.r;
        return fbmVar == null ? cqf.UNKNOWN : fbmVar.f16520e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("0x%04X", Integer.valueOf(this.o)));
        sb.append(": ");
        sb.append(n());
        if (this.r == null) {
            sb.append(String.format("(0x%04X)", Integer.valueOf(this.v)));
        } else {
            int i = this.z;
            if (this.t) {
                sb.append(' ');
                for (int i2 = 0; i2 < i; i2++) {
                    if (i2 != 0) {
                        sb.append(", ");
                    }
                    sb.append("r");
                    sb.append(this.x[i2]);
                }
            }
        }
        return sb.toString();
    }
}
