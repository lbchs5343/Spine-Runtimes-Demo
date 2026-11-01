package g;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class ckg extends ob implements ake {
    public ckg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService", 3);
    }

    @Override // g.ake
    public final void d(cmd cmdVar, afh afhVar) {
        Parcel _cd = _cd();
        m.e(_cd, cmdVar);
        m.e(_cd, afhVar);
        i(_cd, 2);
    }

    @Override // g.ake
    public final List e(String str, String str2, afh afhVar) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        _cd.writeString(str2);
        m.e(_cd, afhVar);
        Parcel _cf = _cf(_cd, 16);
        ArrayList createTypedArrayList = _cf.createTypedArrayList(bou.CREATOR);
        _cf.recycle();
        return createTypedArrayList;
    }

    @Override // g.ake
    public final List f(String str, String str2, String str3) {
        Parcel _cd = _cd();
        _cd.writeString(null);
        _cd.writeString(str2);
        _cd.writeString(str3);
        Parcel _cf = _cf(_cd, 17);
        ArrayList createTypedArrayList = _cf.createTypedArrayList(bou.CREATOR);
        _cf.recycle();
        return createTypedArrayList;
    }

    @Override // g.ake
    public final void g(long j, String str, String str2, String str3) {
        Parcel _cd = _cd();
        _cd.writeLong(j);
        _cd.writeString(str);
        _cd.writeString(str2);
        _cd.writeString(str3);
        i(_cd, 10);
    }

    @Override // g.ake
    public final void j(Bundle bundle, afh afhVar) {
        Parcel _cd = _cd();
        m.e(_cd, bundle);
        m.e(_cd, afhVar);
        i(_cd, 19);
    }

    @Override // g.ake
    public final void k(afh afhVar) {
        Parcel _cd = _cd();
        m.e(_cd, afhVar);
        i(_cd, 18);
    }

    @Override // g.ake
    public final String l(afh afhVar) {
        Parcel _cd = _cd();
        m.e(_cd, afhVar);
        Parcel _cf = _cf(_cd, 11);
        String readString = _cf.readString();
        _cf.recycle();
        return readString;
    }

    @Override // g.ake
    public final void m(afh afhVar) {
        Parcel _cd = _cd();
        m.e(_cd, afhVar);
        i(_cd, 20);
    }

    @Override // g.ake
    public final void n(ctf ctfVar, afh afhVar) {
        Parcel _cd = _cd();
        m.e(_cd, ctfVar);
        m.e(_cd, afhVar);
        i(_cd, 1);
    }

    @Override // g.ake
    public final void o(afh afhVar) {
        Parcel _cd = _cd();
        m.e(_cd, afhVar);
        i(_cd, 4);
    }

    @Override // g.ake
    public final List p(String str, String str2, boolean z, afh afhVar) {
        Parcel _cd = _cd();
        _cd.writeString(str);
        _cd.writeString(str2);
        ClassLoader classLoader = m.f19626a;
        _cd.writeInt(z ? 1 : 0);
        m.e(_cd, afhVar);
        Parcel _cf = _cf(_cd, 14);
        ArrayList createTypedArrayList = _cf.createTypedArrayList(cmd.CREATOR);
        _cf.recycle();
        return createTypedArrayList;
    }

    @Override // g.ake
    public final void r(afh afhVar) {
        Parcel _cd = _cd();
        m.e(_cd, afhVar);
        i(_cd, 6);
    }

    @Override // g.ake
    public final void s(bou bouVar, afh afhVar) {
        Parcel _cd = _cd();
        m.e(_cd, bouVar);
        m.e(_cd, afhVar);
        i(_cd, 12);
    }

    @Override // g.ake
    public final List v(String str, String str2, String str3, boolean z) {
        Parcel _cd = _cd();
        _cd.writeString(null);
        _cd.writeString(str2);
        _cd.writeString(str3);
        ClassLoader classLoader = m.f19626a;
        _cd.writeInt(z ? 1 : 0);
        Parcel _cf = _cf(_cd, 15);
        ArrayList createTypedArrayList = _cf.createTypedArrayList(cmd.CREATOR);
        _cf.recycle();
        return createTypedArrayList;
    }

    @Override // g.ake
    public final byte[] w(ctf ctfVar, String str) {
        Parcel _cd = _cd();
        m.e(_cd, ctfVar);
        _cd.writeString(str);
        Parcel _cf = _cf(_cd, 9);
        byte[] createByteArray = _cf.createByteArray();
        _cf.recycle();
        return createByteArray;
    }
}
