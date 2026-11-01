package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public class zzayc implements IInterface {
    public final IBinder l;
    public final String o;

    public zzayc(String str, IBinder iBinder) {
        this.l = iBinder;
        this.o = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.l;
    }

    public final Parcel p(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.l.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e2) {
                obtain.recycle();
                throw e2;
            }
        } finally {
            parcel.recycle();
        }
    }

    public final void q(Parcel parcel, int i) {
        try {
            this.l.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    public final Parcel r() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.o);
        return obtain;
    }

    public final void s(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            this.l.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
