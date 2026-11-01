package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class akx extends exk {
    public static final Parcelable.Creator<akx> CREATOR = new cqu(10);
    public String afmaVersion;
    public int buddyApkVersion;
    public int clientJarVersion;
    public boolean isClientJar;
    public boolean isLiteSdk;

    public akx(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public akx(int i, int i2, boolean z, boolean z2) {
        this(i, i2, z, false, z2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public akx(int i, int i2, boolean z, boolean z2, boolean z3) {
        this(r0.toString(), i, i2, z, z3);
        String str = z ? "0" : z2 ? "2" : "1";
        StringBuilder z4 = awf.z(i, i2, "afma-sdk-a-v", ".", ".");
        z4.append(str);
    }

    public akx(String str, int i, int i2, boolean z, boolean z2) {
        this.afmaVersion = str;
        this.buddyApkVersion = i;
        this.clientJarVersion = i2;
        this.isClientJar = z;
        this.isLiteSdk = z2;
    }

    public static akx forPackage() {
        return new akx(12451000, 12451000, true);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 2, this.afmaVersion);
        int i2 = this.buddyApkVersion;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i2);
        int i3 = this.clientJarVersion;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(i3);
        boolean z = this.isClientJar;
        egh.aq(parcel, 5, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.isLiteSdk;
        egh.aq(parcel, 6, 4);
        parcel.writeInt(z2 ? 1 : 0);
        egh.s(parcel, af);
    }
}
