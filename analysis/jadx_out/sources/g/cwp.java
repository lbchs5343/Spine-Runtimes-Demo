package g;

import android.os.BadParcelableException;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class cwp extends Binder implements IInterface {
    public final /* synthetic */ int k;

    public /* synthetic */ cwp(int i) {
        this.k = i;
    }

    public cwp(String str) {
        this.k = 3;
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        int i = this.k;
        return this;
    }

    public boolean c(int i, Parcel parcel, Parcel parcel2) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        if (super.onTransact(r5, r6, r7, r8) != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
    
        if (super.onTransact(r5, r6, r7, r8) != false) goto L27;
     */
    @Override // android.os.Binder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (this.k) {
            case 0:
                if (i == 1) {
                    parcel.enforceInterface("moe.shizuku.server.IShizukuServiceConnection");
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    final fsr fsrVar = (fsr) this;
                    fsr.f17345a.post(new dsf(fsrVar, 13, readStrongBinder));
                    try {
                        readStrongBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: g.gph
                            @Override // android.os.IBinder.DeathRecipient
                            public final void binderDied() {
                                fsr fsrVar2 = fsr.this;
                                if (fsrVar2.f17347d) {
                                    return;
                                }
                                fsrVar2.f17347d = true;
                                fsr.f17345a.post(new fvi(23, fsrVar2));
                            }
                        }, 0);
                        return true;
                    } catch (RemoteException unused) {
                        return true;
                    }
                }
                if (i != 2) {
                    if (i != 1598968902) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    parcel2.writeString("moe.shizuku.server.IShizukuServiceConnection");
                    return true;
                }
                parcel.enforceInterface("moe.shizuku.server.IShizukuServiceConnection");
                fsr fsrVar2 = (fsr) this;
                if (fsrVar2.f17347d) {
                    return true;
                }
                fsrVar2.f17347d = true;
                fsr.f17345a.post(new fvi(23, fsrVar2));
                return true;
            case 1:
                if (i > 16777215) {
                    break;
                } else {
                    parcel.enforceInterface(getInterfaceDescriptor());
                }
                switch (i) {
                    case 3:
                        gui.c(parcel);
                        break;
                    case 4:
                        gui.c(parcel);
                        break;
                    case 5:
                    default:
                        return false;
                    case 6:
                        gui.c(parcel);
                        break;
                    case 7:
                        gui.c(parcel);
                        break;
                    case 8:
                        gpi gpiVar = (gpi) gui.b(parcel, gpi.CREATOR);
                        gui.c(parcel);
                        aan aanVar = (aan) this;
                        aanVar.f9860e.post(new efr(aanVar, 10, gpiVar));
                        break;
                    case 9:
                        gui.c(parcel);
                        break;
                }
                parcel2.writeNoException();
                return true;
            case 2:
                if (i > 16777215) {
                    break;
                } else {
                    parcel.enforceInterface(getInterfaceDescriptor());
                }
                kw kwVar = (kw) this;
                if (i != 1) {
                    return false;
                }
                int readInt = parcel.readInt();
                int i3 = kz.f19577a;
                int dataAvail = parcel.dataAvail();
                if (dataAvail > 0) {
                    throw new BadParcelableException(awf.ac(dataAvail, "Parcel data not fully consumed, unread size: "));
                }
                kwVar.f19569a.e(Integer.valueOf(readInt));
                return true;
            default:
                if (i <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i, parcel, parcel2, i2)) {
                    return true;
                }
                return c(i, parcel, parcel2);
        }
    }
}
