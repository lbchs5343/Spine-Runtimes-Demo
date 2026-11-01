package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import g.adg;
import g.fue;
import g.fvt;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(adg adgVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        fue fueVar = remoteActionCompat.f145c;
        boolean z = true;
        if (adgVar.f(1)) {
            fueVar = adgVar.l();
        }
        remoteActionCompat.f145c = (IconCompat) fueVar;
        CharSequence charSequence = remoteActionCompat.f147e;
        if (adgVar.f(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((fvt) adgVar).p);
        }
        remoteActionCompat.f147e = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f148f;
        if (adgVar.f(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((fvt) adgVar).p);
        }
        remoteActionCompat.f148f = charSequence2;
        remoteActionCompat.f143a = (PendingIntent) adgVar.h(remoteActionCompat.f143a, 4);
        boolean z2 = remoteActionCompat.f144b;
        if (adgVar.f(5)) {
            z2 = ((fvt) adgVar).p.readInt() != 0;
        }
        remoteActionCompat.f144b = z2;
        boolean z3 = remoteActionCompat.f146d;
        if (!adgVar.f(6)) {
            z = z3;
        } else if (((fvt) adgVar).p.readInt() == 0) {
            z = false;
        }
        remoteActionCompat.f146d = z;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, adg adgVar) {
        adgVar.getClass();
        IconCompat iconCompat = remoteActionCompat.f145c;
        adgVar.d(1);
        adgVar.i(iconCompat);
        CharSequence charSequence = remoteActionCompat.f147e;
        adgVar.d(2);
        Parcel parcel = ((fvt) adgVar).p;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.f148f;
        adgVar.d(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.f143a;
        adgVar.d(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z = remoteActionCompat.f144b;
        adgVar.d(5);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = remoteActionCompat.f146d;
        adgVar.d(6);
        parcel.writeInt(z2 ? 1 : 0);
    }
}
