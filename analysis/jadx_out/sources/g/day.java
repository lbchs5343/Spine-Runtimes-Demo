package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class day {

    /* renamed from: d, reason: collision with root package name */
    public int f13898d;

    /* renamed from: f, reason: collision with root package name */
    public final deb f13900f;

    /* renamed from: g, reason: collision with root package name */
    public int f13901g;

    /* renamed from: c, reason: collision with root package name */
    public int f13897c = 4096;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f13899e = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public heb[] f13895a = new heb[8];

    /* renamed from: b, reason: collision with root package name */
    public int f13896b = 7;

    public day(ebo eboVar) {
        this.f13900f = baf.ai(eboVar);
    }

    public final gei h() {
        deb debVar = this.f13900f;
        byte readByte = debVar.readByte();
        byte[] bArr = erq.f16043c;
        int i = readByte & 255;
        int i2 = 0;
        boolean z = (readByte & 128) == 128;
        long i3 = i(i, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE);
        if (!z) {
            return debVar.t(i3);
        }
        clq clqVar = new clq();
        int[] iArr = cqd.f13327a;
        bff.p(debVar, abn.EXTRA_SOURCE);
        gvg gvgVar = cqd.f13329c;
        gvg gvgVar2 = gvgVar;
        int i4 = 0;
        for (long j = 0; j < i3; j++) {
            byte readByte2 = debVar.readByte();
            byte[] bArr2 = erq.f16043c;
            i2 = (i2 << 8) | (readByte2 & 255);
            i4 += 8;
            while (i4 >= 8) {
                int i5 = (i2 >>> (i4 - 8)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                gvg[] gvgVarArr = (gvg[]) gvgVar2.f18811c;
                bff.d(gvgVarArr);
                gvgVar2 = gvgVarArr[i5];
                bff.d(gvgVar2);
                if (((gvg[]) gvgVar2.f18811c) == null) {
                    clqVar.al(gvgVar2.f18813e);
                    i4 -= gvgVar2.f18810b;
                    gvgVar2 = gvgVar;
                } else {
                    i4 -= 8;
                }
            }
        }
        while (i4 > 0) {
            int i6 = (i2 << (8 - i4)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
            gvg[] gvgVarArr2 = (gvg[]) gvgVar2.f18811c;
            bff.d(gvgVarArr2);
            gvg gvgVar3 = gvgVarArr2[i6];
            bff.d(gvgVar3);
            int i7 = gvgVar3.f18810b;
            if (((gvg[]) gvgVar3.f18811c) != null || i7 > i4) {
                break;
            }
            clqVar.al(gvgVar3.f18813e);
            i4 -= i7;
            gvgVar2 = gvgVar;
        }
        return clqVar.t(clqVar.f13080b);
    }

    public final int i(int i, int i2) {
        int i3 = i & i2;
        if (i3 < i2) {
            return i3;
        }
        int i4 = 0;
        while (true) {
            byte readByte = this.f13900f.readByte();
            byte[] bArr = erq.f16043c;
            int i5 = readByte & 255;
            if ((readByte & 128) == 0) {
                return i2 + (i5 << i4);
            }
            i2 += (readByte & Byte.MAX_VALUE) << i4;
            i4 += 7;
        }
    }

    public final int j(int i) {
        int i2;
        int i3 = 0;
        if (i > 0) {
            int length = this.f13895a.length;
            while (true) {
                length--;
                i2 = this.f13896b;
                if (length < i2 || i <= 0) {
                    break;
                }
                heb hebVar = this.f13895a[length];
                bff.d(hebVar);
                int i4 = hebVar.i;
                i -= i4;
                this.f13901g -= i4;
                this.f13898d--;
                i3++;
            }
            heb[] hebVarArr = this.f13895a;
            System.arraycopy(hebVarArr, i2 + 1, hebVarArr, i2 + 1 + i3, this.f13898d);
            this.f13896b += i3;
        }
        return i3;
    }

    public final gei k(int i) {
        if (i >= 0) {
            heb[] hebVarArr = bhe.f11573a;
            if (i <= hebVarArr.length - 1) {
                return hebVarArr[i].f19331g;
            }
        }
        int length = this.f13896b + 1 + (i - bhe.f11573a.length);
        if (length >= 0) {
            heb[] hebVarArr2 = this.f13895a;
            if (length < hebVarArr2.length) {
                heb hebVar = hebVarArr2[length];
                bff.d(hebVar);
                return hebVar.f19331g;
            }
        }
        throw new IOException("Header index too large " + (i + 1));
    }

    public final void l(heb hebVar) {
        this.f13899e.add(hebVar);
        int i = hebVar.i;
        int i2 = this.f13897c;
        if (i > i2) {
            fuv.be(r7, null, 0, this.f13895a.length);
            this.f13896b = this.f13895a.length - 1;
            this.f13898d = 0;
            this.f13901g = 0;
            return;
        }
        j((this.f13901g + i) - i2);
        int i3 = this.f13898d + 1;
        heb[] hebVarArr = this.f13895a;
        if (i3 > hebVarArr.length) {
            heb[] hebVarArr2 = new heb[hebVarArr.length * 2];
            System.arraycopy(hebVarArr, 0, hebVarArr2, hebVarArr.length, hebVarArr.length);
            this.f13896b = this.f13895a.length - 1;
            this.f13895a = hebVarArr2;
        }
        int i4 = this.f13896b;
        this.f13896b = i4 - 1;
        this.f13895a[i4] = hebVar;
        this.f13898d++;
        this.f13901g += i;
    }
}
