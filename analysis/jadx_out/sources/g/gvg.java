package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzet;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class gvg implements xl {

    /* renamed from: a, reason: collision with root package name */
    public static final long[] f18809a = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: b, reason: collision with root package name */
    public int f18810b;

    /* renamed from: c, reason: collision with root package name */
    public Object f18811c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18812d;

    /* renamed from: e, reason: collision with root package name */
    public int f18813e;

    public gvg(int i) {
        this.f18812d = i;
        switch (i) {
            case 1:
                break;
            case 2:
            default:
                this.f18811c = new byte[8];
                break;
            case 3:
                this.f18811c = new gvg[256];
                this.f18813e = 0;
                this.f18810b = 0;
                break;
        }
    }

    public gvg(int i, int i2) {
        this.f18812d = 3;
        this.f18811c = null;
        this.f18813e = i;
        int i3 = i2 & 7;
        this.f18810b = i3 == 0 ? 8 : i3;
    }

    public gvg(int i, int i2, SparseArray sparseArray) {
        this.f18812d = 7;
        this.f18813e = i;
        this.f18810b = i2;
        this.f18811c = sparseArray;
    }

    public gvg(Context context, XmlResourceParser xmlResourceParser) {
        this.f18812d = 2;
        this.f18811c = new ArrayList();
        this.f18810b = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), bfv.f11474a);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                this.f18813e = obtainStyledAttributes.getResourceId(index, this.f18813e);
            } else if (index == 1) {
                int resourceId = obtainStyledAttributes.getResourceId(index, this.f18810b);
                this.f18810b = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new ebt().o((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            }
        }
        obtainStyledAttributes.recycle();
    }

    public gvg(View view) {
        this.f18812d = 5;
        this.f18811c = view;
    }

    public gvg(zzet zzetVar, zzad zzadVar) {
        this.f18812d = 6;
        zzed zzedVar = zzetVar.zza;
        this.f18811c = zzedVar;
        zzedVar.zzL(12);
        int zzp = zzedVar.zzp();
        if ("audio/raw".equals(zzadVar.zzo)) {
            int zzk = zzen.zzk(zzadVar.zzE) * zzadVar.zzC;
            if (zzp == 0 || zzp % zzk != 0) {
                zzdt.zzf("BoxParsers", "Audio sample size mismatch. stsd sample size: " + zzk + ", stsz sample size: " + zzp);
                zzp = zzk;
            }
        }
        this.f18813e = zzp == 0 ? -1 : zzp;
        this.f18810b = zzedVar.zzp();
    }

    public gvg(fza fzaVar, int i, int i2) {
        this.f18812d = 4;
        this.f18813e = i;
        this.f18811c = fzaVar;
        this.f18810b = i2;
    }

    public static long f(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= ~f18809a[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    public long g(zzacs zzacsVar, boolean z, boolean z2, int i) {
        int i2;
        byte[] bArr = (byte[]) this.f18811c;
        if (this.f18813e == 0) {
            if (!zzacsVar.zzn(bArr, 0, 1, z)) {
                return -1L;
            }
            int i3 = bArr[0] & 255;
            int i4 = 0;
            while (true) {
                if (i4 >= 8) {
                    i2 = -1;
                    break;
                }
                i2 = i4 + 1;
                if ((f18809a[i4] & i3) != 0) {
                    break;
                }
                i4 = i2;
            }
            this.f18810b = i2;
            if (i2 == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f18813e = 1;
        }
        int i5 = this.f18810b;
        if (i5 > i) {
            this.f18813e = 0;
            return -2L;
        }
        if (i5 != 1) {
            zzacsVar.zzi(bArr, 1, i5 - 1);
        }
        this.f18813e = 0;
        return f(bArr, this.f18810b, z2);
    }

    public ejd h() {
        ejd ejdVar = new ejd();
        ejdVar.f15636a = this.f18813e;
        ejdVar.f15637b = this.f18810b;
        ejdVar.f15638c = (String) this.f18811c;
        return ejdVar;
    }

    public List i() {
        fza fzaVar = (fza) this.f18811c;
        ArrayList arrayList = fzaVar.ac;
        int i = this.f18813e;
        if (i <= arrayList.size()) {
            return arrayList.subList(0, arrayList.size() - this.f18813e);
        }
        throw new IndexOutOfBoundsException("Attempted to get instructions slice of block " + fzaVar.toString() + " with " + i + " skipped instructions whilst only having " + arrayList.size() + " instructions in block.");
    }

    public String j() {
        StringBuilder sb = new StringBuilder("BlockInsnInfo - ");
        sb.append(((fza) this.f18811c).toString());
        sb.append(" [↑ ");
        return awf.x(sb, this.f18813e, "] [↓ 0] ");
    }

    public String toString() {
        switch (this.f18812d) {
            case 4:
                return j();
            default:
                return super.toString();
        }
    }

    @Override // g.xl
    public int zza() {
        return this.f18813e;
    }

    @Override // g.xl
    public int zzb() {
        return this.f18810b;
    }

    @Override // g.xl
    public int zzc() {
        int i = this.f18813e;
        return i == -1 ? ((zzed) this.f18811c).zzp() : i;
    }
}
