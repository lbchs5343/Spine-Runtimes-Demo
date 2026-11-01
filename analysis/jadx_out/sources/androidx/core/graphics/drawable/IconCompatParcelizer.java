package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import g.adg;
import g.fvt;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(adg adgVar) {
        IconCompat iconCompat = new IconCompat();
        int i = iconCompat.f154e;
        if (adgVar.f(1)) {
            i = ((fvt) adgVar).p.readInt();
        }
        iconCompat.f154e = i;
        byte[] bArr = iconCompat.j;
        if (adgVar.f(2)) {
            Parcel parcel = ((fvt) adgVar).p;
            int readInt = parcel.readInt();
            if (readInt < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[readInt];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.j = bArr;
        iconCompat.f152c = adgVar.h(iconCompat.f152c, 3);
        int i2 = iconCompat.f153d;
        if (adgVar.f(4)) {
            i2 = ((fvt) adgVar).p.readInt();
        }
        iconCompat.f153d = i2;
        int i3 = iconCompat.f155f;
        if (adgVar.f(5)) {
            i3 = ((fvt) adgVar).p.readInt();
        }
        iconCompat.f155f = i3;
        iconCompat.k = (ColorStateList) adgVar.h(iconCompat.k, 6);
        String str = iconCompat.f156g;
        if (adgVar.f(7)) {
            str = ((fvt) adgVar).p.readString();
        }
        iconCompat.f156g = str;
        String str2 = iconCompat.i;
        if (adgVar.f(8)) {
            str2 = ((fvt) adgVar).p.readString();
        }
        iconCompat.i = str2;
        iconCompat.f151b = PorterDuff.Mode.valueOf(iconCompat.f156g);
        switch (iconCompat.f154e) {
            case -1:
                Parcelable parcelable = iconCompat.f152c;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.h = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.f152c;
                if (parcelable2 != null) {
                    iconCompat.h = parcelable2;
                    return iconCompat;
                }
                byte[] bArr3 = iconCompat.j;
                iconCompat.h = bArr3;
                iconCompat.f154e = 3;
                iconCompat.f153d = 0;
                iconCompat.f155f = bArr3.length;
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str3 = new String(iconCompat.j, Charset.forName("UTF-16"));
                iconCompat.h = str3;
                if (iconCompat.f154e == 2 && iconCompat.i == null) {
                    iconCompat.i = str3.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.h = iconCompat.j;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, adg adgVar) {
        adgVar.getClass();
        iconCompat.f156g = iconCompat.f151b.name();
        switch (iconCompat.f154e) {
            case -1:
                iconCompat.f152c = (Parcelable) iconCompat.h;
                break;
            case 1:
            case 5:
                iconCompat.f152c = (Parcelable) iconCompat.h;
                break;
            case 2:
                iconCompat.j = ((String) iconCompat.h).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.j = (byte[]) iconCompat.h;
                break;
            case 4:
            case 6:
                iconCompat.j = iconCompat.h.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.f154e;
        if (-1 != i) {
            adgVar.d(1);
            ((fvt) adgVar).p.writeInt(i);
        }
        byte[] bArr = iconCompat.j;
        if (bArr != null) {
            adgVar.d(2);
            Parcel parcel = ((fvt) adgVar).p;
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.f152c;
        if (parcelable != null) {
            adgVar.d(3);
            ((fvt) adgVar).p.writeParcelable(parcelable, 0);
        }
        int i2 = iconCompat.f153d;
        if (i2 != 0) {
            adgVar.d(4);
            ((fvt) adgVar).p.writeInt(i2);
        }
        int i3 = iconCompat.f155f;
        if (i3 != 0) {
            adgVar.d(5);
            ((fvt) adgVar).p.writeInt(i3);
        }
        ColorStateList colorStateList = iconCompat.k;
        if (colorStateList != null) {
            adgVar.d(6);
            ((fvt) adgVar).p.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.f156g;
        if (str != null) {
            adgVar.d(7);
            ((fvt) adgVar).p.writeString(str);
        }
        String str2 = iconCompat.i;
        if (str2 != null) {
            adgVar.d(8);
            ((fvt) adgVar).p.writeString(str2);
        }
    }
}
