package g;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

/* loaded from: classes3.dex */
public final class eno extends exk {
    public static final Parcelable.Creator<eno> CREATOR = new cqu(13);
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final boolean zzd;
    public final int zze;
    public final int zzf;
    public final eno[] zzg;
    public final boolean zzh;
    public final boolean zzi;
    public boolean zzj;
    public boolean zzk;
    public boolean zzl;
    public boolean zzm;
    public boolean zzn;
    public boolean zzo;

    public eno() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public eno(Context context, gin ginVar) {
        this(context, new gin[]{ginVar});
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public eno(Context context, gin[] ginVarArr) {
        int i;
        String str;
        int i2;
        double d2;
        gin ginVar = ginVarArr[0];
        this.zzd = false;
        int i3 = ginVar.f18204f;
        int i4 = ginVar.h;
        boolean z = i3 == -3 && i4 == -4;
        this.zzi = z;
        this.zzm = false;
        boolean z2 = ginVar.f18202d;
        this.zzn = z2;
        boolean z3 = ginVar.f18205g;
        this.zzo = z3;
        if (z) {
            gin ginVar2 = gin.f18199a;
            this.zze = ginVar2.f18204f;
            i4 = ginVar2.h;
            this.zzb = i4;
        } else if (z2) {
            this.zze = i3;
            i4 = ginVar.f18203e;
            this.zzb = i4;
        } else if (z3) {
            this.zze = i3;
            i4 = ginVar.j;
            this.zzb = i4;
        } else {
            this.zze = i3;
            this.zzb = i4;
        }
        boolean z4 = this.zze == -1;
        boolean z5 = i4 == -2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (z4) {
            mx mxVar = cbv.f12612a.f12615d;
            if (context.getResources().getConfiguration().orientation == 2) {
                if (((int) (r7.heightPixels / context.getResources().getDisplayMetrics().density)) < 600) {
                    DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                    if (windowManager != null) {
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        defaultDisplay.getRealMetrics(displayMetrics2);
                        int i5 = displayMetrics2.heightPixels;
                        int i6 = displayMetrics2.widthPixels;
                        defaultDisplay.getMetrics(displayMetrics2);
                        int i7 = displayMetrics2.heightPixels;
                        int i8 = displayMetrics2.widthPixels;
                        if (i7 == i5 && i8 == i6) {
                            int i9 = displayMetrics.widthPixels;
                            int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
                            i2 = i9 - (identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0);
                            this.zzf = i2;
                            d2 = i2 / displayMetrics.density;
                            i = (int) d2;
                            if (d2 - i >= 0.01d) {
                                i++;
                            }
                        }
                    }
                }
            }
            i2 = displayMetrics.widthPixels;
            this.zzf = i2;
            d2 = i2 / displayMetrics.density;
            i = (int) d2;
            if (d2 - i >= 0.01d) {
            }
        } else {
            i = this.zze;
            mx mxVar2 = cbv.f12612a.f12615d;
            this.zzf = mx.i(displayMetrics, i);
        }
        int zze = z5 ? zze(displayMetrics) : this.zzb;
        mx mxVar3 = cbv.f12612a.f12615d;
        this.zzc = mx.i(displayMetrics, zze);
        if (z4 || z5) {
            this.zza = i + "x" + zze + "_as";
        } else {
            if (this.zzn || this.zzo) {
                str = this.zze + "x" + this.zzb + "_as";
            } else if (z) {
                str = "320x50_mb";
            } else {
                this.zza = ginVar.i;
            }
            this.zza = str;
        }
        int length = ginVarArr.length;
        if (length > 1) {
            this.zzg = new eno[length];
            for (int i10 = 0; i10 < ginVarArr.length; i10++) {
                this.zzg[i10] = new eno(context, ginVarArr[i10]);
            }
        } else {
            this.zzg = null;
        }
        this.zzh = false;
        this.zzj = false;
    }

    public eno(String str, int i, int i2, boolean z, int i3, int i4, eno[] enoVarArr, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = z;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = enoVarArr;
        this.zzh = z2;
        this.zzi = z3;
        this.zzj = z4;
        this.zzk = z5;
        this.zzl = z6;
        this.zzm = z7;
        this.zzn = z8;
        this.zzo = z9;
    }

    public static int zza(DisplayMetrics displayMetrics) {
        return (int) (zze(displayMetrics) * displayMetrics.density);
    }

    public static eno zzb() {
        return new eno("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false, false);
    }

    public static eno zzc() {
        return new eno("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false, false);
    }

    public static eno zzd() {
        return new eno("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    private static int zze(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 2, str);
        int i2 = this.zzb;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i2);
        int i3 = this.zzc;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(i3);
        boolean z = this.zzd;
        egh.aq(parcel, 5, 4);
        parcel.writeInt(z ? 1 : 0);
        int i4 = this.zze;
        egh.aq(parcel, 6, 4);
        parcel.writeInt(i4);
        int i5 = this.zzf;
        egh.aq(parcel, 7, 4);
        parcel.writeInt(i5);
        egh.ah(parcel, 8, this.zzg, i);
        boolean z2 = this.zzh;
        egh.aq(parcel, 9, 4);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = this.zzi;
        egh.aq(parcel, 10, 4);
        parcel.writeInt(z3 ? 1 : 0);
        boolean z4 = this.zzj;
        egh.aq(parcel, 11, 4);
        parcel.writeInt(z4 ? 1 : 0);
        boolean z5 = this.zzk;
        egh.aq(parcel, 12, 4);
        parcel.writeInt(z5 ? 1 : 0);
        boolean z6 = this.zzl;
        egh.aq(parcel, 13, 4);
        parcel.writeInt(z6 ? 1 : 0);
        boolean z7 = this.zzm;
        egh.aq(parcel, 14, 4);
        parcel.writeInt(z7 ? 1 : 0);
        boolean z8 = this.zzn;
        egh.aq(parcel, 15, 4);
        parcel.writeInt(z8 ? 1 : 0);
        boolean z9 = this.zzo;
        egh.aq(parcel, 16, 4);
        parcel.writeInt(z9 ? 1 : 0);
        egh.s(parcel, af);
    }
}
