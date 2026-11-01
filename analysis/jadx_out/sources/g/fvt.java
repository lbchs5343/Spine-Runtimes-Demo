package g;

import android.os.Parcel;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class fvt extends adg {
    public final String m;
    public int n;
    public final SparseIntArray o;
    public final Parcel p;
    public final int q;
    public int r;
    public int s;
    public final int t;

    public fvt(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new tl(0), new tl(0), new tl(0));
    }

    public fvt(Parcel parcel, int i, int i2, String str, tl tlVar, tl tlVar2, tl tlVar3) {
        super(tlVar, tlVar2, tlVar3);
        this.o = new SparseIntArray();
        this.r = -1;
        this.n = -1;
        this.p = parcel;
        this.q = i;
        this.t = i2;
        this.s = i;
        this.m = str;
    }

    @Override // g.adg
    public final void d(int i) {
        int i2 = this.r;
        SparseIntArray sparseIntArray = this.o;
        Parcel parcel = this.p;
        if (i2 >= 0) {
            int i3 = sparseIntArray.get(i2);
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i3);
            parcel.writeInt(dataPosition - i3);
            parcel.setDataPosition(dataPosition);
        }
        this.r = i;
        sparseIntArray.put(i, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i);
    }

    @Override // g.adg
    public final boolean f(int i) {
        while (this.s < this.t) {
            int i2 = this.n;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            int i3 = this.s;
            Parcel parcel = this.p;
            parcel.setDataPosition(i3);
            int readInt = parcel.readInt();
            this.n = parcel.readInt();
            this.s += readInt;
        }
        return this.n == i;
    }

    @Override // g.adg
    public final fvt g() {
        Parcel parcel = this.p;
        int dataPosition = parcel.dataPosition();
        int i = this.s;
        if (i == this.q) {
            i = this.t;
        }
        return new fvt(parcel, dataPosition, i, awf.ad(new StringBuilder(), this.m, "  "), this.f10033a, this.f10034b, this.f10035c);
    }
}
