package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Matrix;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthGsm;
import android.telephony.CellSignalStrengthLte;
import android.telephony.CellSignalStrengthWcdma;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzdel;
import com.google.android.gms.internal.ads.zzfxd;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzgzm;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class bli implements bol, dqr, avy, hdb, efi, coc, zzacu, bpe, ciq, zzgee, ere, eco {

    /* renamed from: f, reason: collision with root package name */
    public static boolean f11785f = true;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f11786g = false;
    public static boolean h = true;
    public static Method i = null;
    public static boolean j = false;
    public static boolean k = true;
    public static ert n;
    public static Field o;
    public final /* synthetic */ int p;

    public /* synthetic */ bli(int i2) {
        this.p = i2;
    }

    public bli(View view) {
        this.p = 11;
        if (Build.VERSION.SDK_INT >= 30) {
            new cb(17, view).f12574a = view;
        } else {
            new eie(17, view);
        }
    }

    public /* synthetic */ bli(mx mxVar) {
        this.p = 19;
    }

    public static final void q(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.zzk != 4 || adOverlayInfoParcel.zzc != null) {
            Intent intent = new Intent();
            intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
            intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzm.isClientJar);
            intent.putExtra("shouldCallOnOverlayOpened", z);
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
            intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
            if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            esy esyVar = ti.f20033a.z;
            esy.ad(context, intent);
            return;
        }
        evo evoVar = adOverlayInfoParcel.zzb;
        if (evoVar != null) {
            evoVar.onAdClicked();
        }
        zzdel zzdelVar = adOverlayInfoParcel.zzu;
        if (zzdelVar != null) {
            zzdelVar.zzdG();
        }
        Activity zzi = adOverlayInfoParcel.zzd.zzi();
        etg etgVar = adOverlayInfoParcel.zza;
        if (etgVar != null && etgVar.zzj && zzi != null) {
            context = zzi;
        }
        cfg cfgVar = ti.f20033a.l;
        cfg.j(context, etgVar, adOverlayInfoParcel.zzi, etgVar != null ? etgVar.zzi : null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if (r12[r13] <= (-65)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        r13 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0046, code lost:
    
        if (r12[r13] <= (-65)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008c, code lost:
    
        if (r12[r13] <= (-65)) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int r(int i2, byte[] bArr, int i3, int i4) {
        int i5;
        int i6;
        if (i2 != 0) {
            if (i3 >= i4) {
                return i2;
            }
            byte b2 = (byte) i2;
            if (b2 < -32) {
                if (b2 >= -62) {
                    i6 = i3 + 1;
                }
                return -1;
            }
            int i7 = ~(i2 >> 8);
            if (b2 < -16) {
                byte b3 = (byte) i7;
                if (b3 == 0) {
                    int i8 = i3 + 1;
                    byte b4 = bArr[i3];
                    if (i8 >= i4) {
                        return bso.c(b2, b4);
                    }
                    i3 = i8;
                    b3 = b4;
                }
                if (b3 <= -65 && ((b2 != -32 || b3 >= -96) && (b2 != -19 || b3 < -96))) {
                    i6 = i3 + 1;
                }
                return -1;
            }
            byte b5 = (byte) i7;
            if (b5 == 0) {
                int i9 = i3 + 1;
                b5 = bArr[i3];
                if (i9 >= i4) {
                    return bso.c(b2, b5);
                }
                i3 = i9;
                i5 = 0;
            } else {
                i5 = i2 >> 16;
            }
            if (i5 == 0) {
                int i10 = i3 + 1;
                byte b6 = bArr[i3];
                if (i10 >= i4) {
                    bli bliVar = bso.f12134a;
                    if (b2 > -12 || b5 > -65 || b6 > -65) {
                        return -1;
                    }
                    return ((b5 << 8) ^ b2) ^ (b6 << 16);
                }
                i3 = i10;
                i5 = b6;
            }
            if (b5 <= -65) {
                if ((((b5 + 112) + (b2 << 28)) >> 30) == 0 && i5 <= -65) {
                    i6 = i3 + 1;
                }
            }
            return -1;
        }
        while (i3 < i4 && bArr[i3] >= 0) {
            i3++;
        }
        if (i3 < i4) {
            while (i3 < i4) {
                int i11 = i3 + 1;
                byte b7 = bArr[i3];
                if (b7 < 0) {
                    if (b7 < -32) {
                        if (i11 >= i4) {
                            return b7;
                        }
                        if (b7 >= -62) {
                            i3 += 2;
                            if (bArr[i11] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b7 < -16) {
                        if (i11 >= i4 - 1) {
                            return bso.d(i11, bArr, i4);
                        }
                        int i12 = i3 + 2;
                        byte b8 = bArr[i11];
                        if (b8 <= -65 && ((b7 != -32 || b8 >= -96) && (b7 != -19 || b8 < -96))) {
                            i3 += 3;
                            if (bArr[i12] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (i11 >= i4 - 2) {
                        return bso.d(i11, bArr, i4);
                    }
                    int i13 = i3 + 2;
                    byte b9 = bArr[i11];
                    if (b9 <= -65) {
                        if ((((b9 + 112) + (b7 << 28)) >> 30) == 0) {
                            int i14 = i3 + 3;
                            if (bArr[i13] <= -65) {
                                i3 += 4;
                                if (bArr[i14] > -65) {
                                }
                            }
                        }
                    }
                    return -1;
                }
                i3 = i11;
            }
        }
        return 0;
    }

    public static crd s(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return new crd(1, httpURLConnection);
    }

    public static String t(int i2, byte[] bArr, int i3) {
        int i4;
        int length = bArr.length;
        if ((((length - i2) - i3) | i2 | i3) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        int i5 = i2 + i3;
        char[] cArr = new char[i3];
        int i6 = 0;
        while (i2 < i5) {
            byte b2 = bArr[i2];
            if (b2 < 0) {
                break;
            }
            i2++;
            cArr[i6] = (char) b2;
            i6++;
        }
        int i7 = i6;
        while (i2 < i5) {
            int i8 = i2 + 1;
            byte b3 = bArr[i2];
            if (b3 >= 0) {
                cArr[i7] = (char) b3;
                i7++;
                i2 = i8;
                while (i2 < i5) {
                    byte b4 = bArr[i2];
                    if (b4 >= 0) {
                        i2++;
                        cArr[i7] = (char) b4;
                        i7++;
                    }
                }
            } else {
                if (b3 < -32) {
                    if (i8 >= i5) {
                        throw new zzgzm("Protocol message had invalid UTF-8.");
                    }
                    i4 = i7 + 1;
                    i2 += 2;
                    ckd.p(b3, bArr[i8], cArr, i7);
                } else if (b3 < -16) {
                    if (i8 >= i5 - 1) {
                        throw new zzgzm("Protocol message had invalid UTF-8.");
                    }
                    i4 = i7 + 1;
                    int i9 = i2 + 2;
                    i2 += 3;
                    ckd.ay(b3, bArr[i8], bArr[i9], cArr, i7);
                } else {
                    if (i8 >= i5 - 2) {
                        throw new zzgzm("Protocol message had invalid UTF-8.");
                    }
                    byte b5 = bArr[i8];
                    int i10 = i2 + 3;
                    byte b6 = bArr[i2 + 2];
                    i2 += 4;
                    ckd.ad(b3, b5, b6, bArr[i10], cArr, i7);
                    i7 += 2;
                }
                i7 = i4;
            }
        }
        return new String(cArr, 0, i7);
    }

    public static final String u(ByteBuffer byteBuffer, int i2, int i3) {
        int i4;
        if ((((byteBuffer.limit() - i2) - i3) | i2 | i3) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        int i5 = i2 + i3;
        char[] cArr = new char[i3];
        int i6 = 0;
        while (i2 < i5) {
            byte b2 = byteBuffer.get(i2);
            if (b2 < 0) {
                break;
            }
            i2++;
            cArr[i6] = (char) b2;
            i6++;
        }
        int i7 = i6;
        while (i2 < i5) {
            int i8 = i2 + 1;
            byte b3 = byteBuffer.get(i2);
            if (b3 >= 0) {
                cArr[i7] = (char) b3;
                i7++;
                i2 = i8;
                while (i2 < i5) {
                    byte b4 = byteBuffer.get(i2);
                    if (b4 >= 0) {
                        i2++;
                        cArr[i7] = (char) b4;
                        i7++;
                    }
                }
            } else {
                if (b3 < -32) {
                    if (i8 >= i5) {
                        throw new zzgzm("Protocol message had invalid UTF-8.");
                    }
                    i4 = i7 + 1;
                    i2 += 2;
                    ckd.p(b3, byteBuffer.get(i8), cArr, i7);
                } else if (b3 < -16) {
                    if (i8 >= i5 - 1) {
                        throw new zzgzm("Protocol message had invalid UTF-8.");
                    }
                    i4 = i7 + 1;
                    int i9 = i2 + 2;
                    i2 += 3;
                    ckd.ay(b3, byteBuffer.get(i8), byteBuffer.get(i9), cArr, i7);
                } else {
                    if (i8 >= i5 - 2) {
                        throw new zzgzm("Protocol message had invalid UTF-8.");
                    }
                    byte b5 = byteBuffer.get(i8);
                    int i10 = i2 + 3;
                    byte b6 = byteBuffer.get(i2 + 2);
                    i2 += 4;
                    ckd.ad(b3, b5, b6, byteBuffer.get(i10), cArr, i7);
                    i7 += 2;
                }
                i7 = i4;
            }
        }
        return new String(cArr, 0, i7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
    
        if (r5 >= (r0 * r2)) goto L30;
     */
    @Override // g.avy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean _bq(hed hedVar, cfm cfmVar) {
        int ba;
        if (cfmVar instanceof goe) {
            goe goeVar = (goe) cfmVar;
            if (goeVar.f18486g != null) {
                amj amjVar = goeVar.h;
                if (amjVar == null ? false : gs.q(amjVar, amjVar)) {
                    if (!ack.l(gs.ac(goeVar.h), hay.THROW) && hedVar.bg() && (ba = gs.ba(goeVar.h)) < 5) {
                        int ba2 = gs.ba(goeVar.f18486g);
                        int i2 = ((lh) goeVar.f18486g).l.g(csv.ELSE_IF_CHAIN) ? 4 : 2;
                        if (ba != ba2) {
                            if (ba * i2 > ba2) {
                            }
                        }
                    }
                    cfm cfmVar2 = goeVar.f11698d;
                    eys eysVar = new eys(cfmVar2);
                    if (cfmVar2.f(goeVar, eysVar)) {
                        eysVar.h(goeVar);
                        eysVar.h(goeVar.f18486g);
                        goeVar.f18486g = null;
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // g.hdb
    public boolean _bz(Context context, ert ertVar) {
        boolean z;
        Activity activity;
        ert ertVar2;
        Activity activity2;
        String join;
        int uarfcn;
        int rsrp;
        int rsrq;
        int rssnr;
        int cqi;
        int bandwidth;
        int earfcn;
        int timingAdvance;
        int arfcn;
        int bsic;
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        Activity activity3 = (Activity) context;
        String str = null;
        if (eyt.am(activity3, "android.permission.READ_PHONE_STATE") == 0 && eyt.am(activity3, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            try {
                str = acw.z(activity3);
                arrayList.add(activity3.getString(R.string.network_type, str));
            } catch (Exception unused) {
            }
            if ("Wifi".equals(str) && (wifiManager = (WifiManager) activity3.getSystemService("wifi")) != null && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
                arrayList.add(activity3.getString(R.string.network_wifi_ssid, eyt.bk(connectionInfo.getSSID())));
            }
            arrayList.add(activity3.getString(R.string.network_ipv4, acw.bl(true)));
            String bl = acw.bl(false);
            if (!TextUtils.isEmpty(bl)) {
                arrayList.add(activity3.getString(R.string.network_ipv6, bl));
            }
            arrayList.add(activity3.getString(R.string.network_mac_address, acw.bb(activity3)));
            TelephonyManager telephonyManager = (TelephonyManager) activity3.getSystemService("phone");
            arrayList.add("CallState: " + telephonyManager.getCallState());
            arrayList.add("DataActivity: " + telephonyManager.getDataActivity());
            arrayList.add("DataState: " + telephonyManager.getDataState());
            if (dyd.bp(19)) {
                arrayList.add("GroupIdLevel1: " + eyt.bk(telephonyManager.getGroupIdLevel1()));
                arrayList.add("MMS User Agent Profile URL: " + eyt.bk(telephonyManager.getMmsUAProfUrl()));
                arrayList.add("MMS User Agent: " + eyt.bk(telephonyManager.getMmsUserAgent()));
            }
            arrayList.add("Network Country ISO: " + eyt.bk(telephonyManager.getNetworkCountryIso()));
            arrayList.add("Network Operator: " + eyt.bk(telephonyManager.getNetworkOperator()));
            arrayList.add("Network Operator Name: " + eyt.bk(telephonyManager.getNetworkOperatorName()));
            arrayList.add("Network Roaming: " + eyt.bk(Boolean.valueOf(telephonyManager.isNetworkRoaming())));
            try {
                arrayList.add("Network Type: " + telephonyManager.getNetworkType());
            } catch (Exception unused2) {
            }
            arrayList.add("Phone Type: " + telephonyManager.getPhoneType());
            arrayList.add("Sim Country ISO: " + eyt.bk(telephonyManager.getSimCountryIso()));
            arrayList.add("Sim Operator: " + eyt.bk(telephonyManager.getSimOperator()));
            arrayList.add("Sim Operator Name: " + eyt.bk(telephonyManager.getSimOperatorName()));
            try {
                if (dyd.bp(29)) {
                    arrayList.add(activity3.getString(R.string.id_serial_number, activity3.getString(R.string.no_permission_after_q)));
                } else {
                    arrayList.add(activity3.getString(R.string.id_serial_number, eyt.bk(telephonyManager.getSimSerialNumber())));
                }
            } catch (SecurityException e2) {
                if (!dyd.bq(24)) {
                    throw e2;
                }
                erl.ac(e2);
            }
            arrayList.add("Sim State: " + telephonyManager.getSimState());
            if (dyd.bp(29)) {
                arrayList.add(activity3.getString(R.string.id_imsi, activity3.getString(R.string.no_permission_after_q)));
            } else {
                arrayList.add(activity3.getString(R.string.id_imsi, eyt.bk(telephonyManager.getSubscriberId())));
            }
            String str2 = "\r\n";
            if (dyd.bp(29)) {
                join = TextUtils.join("\r\n", arrayList);
                activity2 = activity3;
                z = true;
            } else {
                if (dyd.bp(17)) {
                    List<CellInfo> allCellInfo = telephonyManager.getAllCellInfo();
                    if (!acw.u(allCellInfo)) {
                        Iterator<CellInfo> it = allCellInfo.iterator();
                        while (it.hasNext()) {
                            CellInfo next = it.next();
                            if (next != null) {
                                i2++;
                                Iterator<CellInfo> it2 = it;
                                Activity activity4 = activity3;
                                String str3 = str2;
                                if (next instanceof CellInfoCdma) {
                                    CellInfoCdma cellInfoCdma = (CellInfoCdma) next;
                                    if (i2 >= 2) {
                                        arrayList.add("");
                                    }
                                    arrayList.add("Registered: " + eyt.bk(Boolean.valueOf(cellInfoCdma.isRegistered())));
                                    arrayList.add("TimeStamp(in nanos): " + eyt.bk(Long.valueOf(cellInfoCdma.getTimeStamp())));
                                    CellIdentityCdma cellIdentity = cellInfoCdma.getCellIdentity();
                                    if (cellIdentity != null) {
                                        arrayList.add("Network Id: " + eyt.bk(Integer.valueOf(cellIdentity.getNetworkId())));
                                        arrayList.add("System Id: " + eyt.bk(Integer.valueOf(cellIdentity.getSystemId())));
                                        arrayList.add("Base Station Id: " + eyt.bk(Integer.valueOf(cellIdentity.getBasestationId())));
                                        arrayList.add("Base station Longitude: " + eyt.bk(Integer.valueOf(cellIdentity.getLongitude())));
                                        arrayList.add("Base station Latitude: " + eyt.bk(Integer.valueOf(cellIdentity.getLatitude())));
                                        arrayList.add("Cell Identity Type: " + eyt.an(awt.ag(cellIdentity, "getType")));
                                        arrayList.add("Cell Identity Channel Number: " + eyt.an(awt.ag(cellIdentity, "getChannelNumber")));
                                        arrayList.add("Operator Alpha Long: " + eyt.bk(awt.ag(cellIdentity, "getOperatorAlphaLong")));
                                        arrayList.add("Operator Alpha Short: " + eyt.bk(awt.ag(cellIdentity, "getOperatorAlphaShort")));
                                        CellSignalStrengthCdma cellSignalStrength = cellInfoCdma.getCellSignalStrength();
                                        if (cellSignalStrength != null) {
                                            arrayList.add("Signal Level(an asu): " + eyt.bk(Integer.valueOf(cellSignalStrength.getAsuLevel())));
                                            arrayList.add("Signal Level: " + eyt.bk(acw.r(cellSignalStrength.getLevel())));
                                            arrayList.add("Signal Strength(in dBm): " + eyt.bk(Integer.valueOf(cellSignalStrength.getDbm())));
                                            arrayList.add("RSSI(in dBm): " + eyt.bk(Integer.valueOf(cellSignalStrength.getCdmaDbm())));
                                            arrayList.add("Ec/Io(in dB*10): " + eyt.bk(Integer.valueOf(cellSignalStrength.getCdmaEcio())));
                                            arrayList.add("EVDO RSSI(in dB): " + eyt.bk(Integer.valueOf(cellSignalStrength.getEvdoDbm())));
                                            arrayList.add("EVDO Ec/Io(in dB*10): " + eyt.bk(Integer.valueOf(cellSignalStrength.getEvdoEcio())));
                                            arrayList.add("EVDO Signal-to-noise Ratio: " + eyt.bk(Integer.valueOf(cellSignalStrength.getEvdoSnr())));
                                            arrayList.add("CMDA Signal Level: " + eyt.bk(acw.r(cellSignalStrength.getCdmaLevel())));
                                            arrayList.add("EVDO Signal Level: " + eyt.bk(acw.r(cellSignalStrength.getEvdoLevel())));
                                        }
                                    }
                                } else if (next instanceof CellInfoGsm) {
                                    CellInfoGsm cellInfoGsm = (CellInfoGsm) next;
                                    if (i2 >= 2) {
                                        arrayList.add("");
                                    }
                                    arrayList.add("Registered: " + eyt.bk(Boolean.valueOf(cellInfoGsm.isRegistered())));
                                    arrayList.add("TimeStamp(in nanos): " + eyt.bk(Long.valueOf(cellInfoGsm.getTimeStamp())));
                                    CellIdentityGsm cellIdentity2 = cellInfoGsm.getCellIdentity();
                                    if (cellIdentity2 != null) {
                                        arrayList.add("Cell Identity: " + eyt.bk(Integer.valueOf(cellIdentity2.getCid())));
                                        arrayList.add("Cell Identity Type: " + eyt.an(awt.ag(cellIdentity2, "getType")));
                                        arrayList.add("Cell Identity Channel Number: " + eyt.an(awt.ag(cellIdentity2, "getChannelNumber")));
                                        arrayList.add("Location Area Code: " + eyt.bk(Integer.valueOf(cellIdentity2.getLac())));
                                        arrayList.add("Mobile Country Code: " + eyt.bk(Integer.valueOf(cellIdentity2.getMcc())));
                                        arrayList.add("Mobile Network Code: " + eyt.bk(Integer.valueOf(cellIdentity2.getMnc())));
                                        arrayList.add("Operator Alpha Long: " + eyt.bk(awt.ag(cellIdentity2, "getOperatorAlphaLong")));
                                        arrayList.add("Operator Alpha Short: " + eyt.bk(awt.ag(cellIdentity2, "getOperatorAlphaShort")));
                                        if (dyd.bp(24)) {
                                            StringBuilder sb = new StringBuilder("Absolute RF Channel Number: ");
                                            arfcn = cellIdentity2.getArfcn();
                                            sb.append(eyt.bk(Integer.valueOf(arfcn)));
                                            arrayList.add(sb.toString());
                                            StringBuilder sb2 = new StringBuilder("Base Station Identity Code: ");
                                            bsic = cellIdentity2.getBsic();
                                            sb2.append(eyt.bk(Integer.valueOf(bsic)));
                                            arrayList.add(sb2.toString());
                                        }
                                        CellSignalStrengthGsm cellSignalStrength2 = cellInfoGsm.getCellSignalStrength();
                                        if (cellSignalStrength2 != null) {
                                            arrayList.add("Signal Level(an asu): " + eyt.bk(Integer.valueOf(cellSignalStrength2.getAsuLevel())));
                                            arrayList.add("Signal Level: " + eyt.bk(acw.r(cellSignalStrength2.getLevel())));
                                            arrayList.add("Signal Strength(in dBm): " + eyt.bk(Integer.valueOf(cellSignalStrength2.getDbm())));
                                            if (dyd.bp(26)) {
                                                StringBuilder sb3 = new StringBuilder("TimingAdvance: ");
                                                timingAdvance = cellSignalStrength2.getTimingAdvance();
                                                sb3.append(eyt.bk(Integer.valueOf(timingAdvance)));
                                                arrayList.add(sb3.toString());
                                            }
                                        }
                                    }
                                } else if (next instanceof CellInfoLte) {
                                    CellInfoLte cellInfoLte = (CellInfoLte) next;
                                    if (i2 >= 2) {
                                        arrayList.add("");
                                    }
                                    arrayList.add("Registered: " + eyt.bk(Boolean.valueOf(cellInfoLte.isRegistered())));
                                    arrayList.add("TimeStamp(in nanos): " + eyt.bk(Long.valueOf(cellInfoLte.getTimeStamp())));
                                    CellIdentityLte cellIdentity3 = cellInfoLte.getCellIdentity();
                                    if (cellIdentity3 != null) {
                                        arrayList.add("Cell Identity: " + eyt.bk(Integer.valueOf(cellIdentity3.getCi())));
                                        arrayList.add("Cell Identity Type: " + eyt.an(awt.ag(cellIdentity3, "getType")));
                                        arrayList.add("Cell Identity Channel Number: " + eyt.an(awt.ag(cellIdentity3, "getChannelNumber")));
                                        arrayList.add("Physical Cell Id: " + eyt.bk(Integer.valueOf(cellIdentity3.getPci())));
                                        arrayList.add("Tracking Area Code: " + eyt.bk(Integer.valueOf(cellIdentity3.getTac())));
                                        arrayList.add("Mobile Country Code: " + eyt.bk(Integer.valueOf(cellIdentity3.getMcc())));
                                        arrayList.add("Mobile Network Code: " + eyt.bk(Integer.valueOf(cellIdentity3.getMnc())));
                                        arrayList.add("Operator Alpha Long: " + eyt.bk(awt.ag(cellIdentity3, "getOperatorAlphaLong")));
                                        arrayList.add("Operator Alpha Short: " + eyt.bk(awt.ag(cellIdentity3, "getOperatorAlphaShort")));
                                        if (dyd.bp(24)) {
                                            StringBuilder sb4 = new StringBuilder("Absolute RF Channel Number: ");
                                            earfcn = cellIdentity3.getEarfcn();
                                            sb4.append(eyt.bk(Integer.valueOf(earfcn)));
                                            arrayList.add(sb4.toString());
                                        }
                                        if (dyd.bp(28)) {
                                            StringBuilder sb5 = new StringBuilder("Cell Bandwidth(in kHz): ");
                                            bandwidth = cellIdentity3.getBandwidth();
                                            sb5.append(eyt.bk(Integer.valueOf(bandwidth)));
                                            arrayList.add(sb5.toString());
                                        }
                                        CellSignalStrengthLte cellSignalStrength3 = cellInfoLte.getCellSignalStrength();
                                        if (cellSignalStrength3 != null) {
                                            arrayList.add("Signal Level(an asu): " + eyt.bk(Integer.valueOf(cellSignalStrength3.getAsuLevel())));
                                            arrayList.add("Signal Level: " + eyt.bk(acw.r(cellSignalStrength3.getLevel())));
                                            arrayList.add("Signal Strength(in dBm): " + eyt.bk(Integer.valueOf(cellSignalStrength3.getDbm())));
                                            if (dyd.bp(26)) {
                                                StringBuilder sb6 = new StringBuilder("Rsrp(Reference Signal Received Power): ");
                                                rsrp = cellSignalStrength3.getRsrp();
                                                sb6.append(eyt.bk(Integer.valueOf(rsrp)));
                                                arrayList.add(sb6.toString());
                                                StringBuilder sb7 = new StringBuilder("Rsrq(Reference Signal Received Quality): ");
                                                rsrq = cellSignalStrength3.getRsrq();
                                                sb7.append(eyt.bk(Integer.valueOf(rsrq)));
                                                arrayList.add(sb7.toString());
                                                StringBuilder sb8 = new StringBuilder("Rssnr(Reference Signal Signal-to-noise Ratio): ");
                                                rssnr = cellSignalStrength3.getRssnr();
                                                sb8.append(eyt.bk(Integer.valueOf(rssnr)));
                                                arrayList.add(sb8.toString());
                                                StringBuilder sb9 = new StringBuilder("Cqi(Channel Quality Indicator): ");
                                                cqi = cellSignalStrength3.getCqi();
                                                sb9.append(eyt.bk(Integer.valueOf(cqi)));
                                                arrayList.add(sb9.toString());
                                            }
                                            arrayList.add("TimingAdvance: " + eyt.bk(Integer.valueOf(cellSignalStrength3.getTimingAdvance())));
                                        }
                                    }
                                } else if (!dyd.ar(18) && (next instanceof CellInfoWcdma)) {
                                    if (i2 >= 2) {
                                        arrayList.add("");
                                    }
                                    CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) next;
                                    arrayList.add("Registered: " + eyt.bk(Boolean.valueOf(cellInfoWcdma.isRegistered())));
                                    arrayList.add("TimeStamp(in nanos): " + eyt.bk(Long.valueOf(cellInfoWcdma.getTimeStamp())));
                                    CellIdentityWcdma cellIdentity4 = cellInfoWcdma.getCellIdentity();
                                    if (cellIdentity4 != null) {
                                        arrayList.add("Cell Identity: " + eyt.bk(Integer.valueOf(cellIdentity4.getCid())));
                                        arrayList.add("Cell Identity Type: " + eyt.an(awt.ag(cellIdentity4, "getType")));
                                        arrayList.add("Cell Identity Channel Number: " + eyt.an(awt.ag(cellIdentity4, "getChannelNumber")));
                                        arrayList.add("Location Area Code: " + eyt.bk(Integer.valueOf(cellIdentity4.getLac())));
                                        arrayList.add("Mobile Country Code: " + eyt.bk(Integer.valueOf(cellIdentity4.getMcc())));
                                        arrayList.add("Mobile Network Code: " + eyt.bk(Integer.valueOf(cellIdentity4.getMnc())));
                                        arrayList.add("Operator Alpha Long: " + eyt.bk(awt.ag(cellIdentity4, "getOperatorAlphaLong")));
                                        arrayList.add("Operator Alpha Short: " + eyt.bk(awt.ag(cellIdentity4, "getOperatorAlphaShort")));
                                        if (dyd.bp(24)) {
                                            StringBuilder sb10 = new StringBuilder("UMTS Absolute RF Channel Number: ");
                                            uarfcn = cellIdentity4.getUarfcn();
                                            sb10.append(eyt.bk(Integer.valueOf(uarfcn)));
                                            arrayList.add(sb10.toString());
                                        }
                                        arrayList.add("UMTS Primary Scrambling Code: " + eyt.bk(Integer.valueOf(cellIdentity4.getPsc())));
                                        CellSignalStrengthWcdma cellSignalStrength4 = cellInfoWcdma.getCellSignalStrength();
                                        if (cellSignalStrength4 != null) {
                                            arrayList.add("Signal Level(an asu): " + eyt.bk(Integer.valueOf(cellSignalStrength4.getAsuLevel())));
                                            arrayList.add("Signal Level: " + eyt.bk(acw.r(cellSignalStrength4.getLevel())));
                                            arrayList.add("Signal Strength(in dBm): " + eyt.bk(Integer.valueOf(cellSignalStrength4.getDbm())));
                                        }
                                    }
                                }
                                it = it2;
                                activity3 = activity4;
                                str2 = str3;
                            }
                        }
                    }
                }
                activity2 = activity3;
                z = true;
                join = TextUtils.join(str2, arrayList);
            }
            str = join;
            ertVar2 = ertVar;
            activity = activity2;
        } else {
            z = true;
            activity = activity3;
            if (eyt.am(activity, "android.permission.READ_PHONE_STATE") != 0) {
                ertVar2 = ertVar;
                baf.bg(activity, "android.permission.READ_PHONE_STATE", activity.getString(R.string.permission_for_network), new akj(activity, 10, ertVar2));
            } else {
                ertVar2 = ertVar;
                if (eyt.am(activity, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                    baf.bg(activity, "android.permission.ACCESS_COARSE_LOCATION", activity.getString(R.string.permission_for_gps), new gtb(activity, 7, ertVar2));
                }
            }
        }
        baf.ag(activity, ertVar2, str);
        return z;
    }

    public float aa(View view) {
        if (h) {
            try {
                return ckk.a(view);
            } catch (NoSuchMethodError unused) {
                h = false;
            }
        }
        return view.getAlpha();
    }

    public void c(View view, int i2, int i3, int i4, int i5) {
        if (!j) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", cls, cls, cls, cls);
                i = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            j = true;
        }
        Method method = i;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
            } catch (IllegalAccessException unused2) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    public void e(View view, int i2) {
        if (!f11786g) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                o = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f11786g = true;
        }
        Field field = o;
        if (field != null) {
            try {
                o.setInt(view, i2 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    @Override // g.fcc
    public Object get() {
        return new bxc(0, Executors.newSingleThreadExecutor());
    }

    @Override // g.coc
    public int getAmount() {
        return 1;
    }

    @Override // g.coc
    public String getType() {
        return "";
    }

    @Override // g.dqr
    public blj l(Class cls, ewp ewpVar) {
        switch (this.p) {
        }
        return m(cls);
    }

    @Override // g.dqr
    public blj m(Class cls) {
        switch (this.p) {
            case 2:
                return new androidx.fragment.app.l(true);
            default:
                return new her();
        }
    }

    @Override // g.ere
    public br v(Context context, String str, hc hcVar) {
        br brVar = new br();
        int a2 = hcVar.a(context, str, true);
        brVar.f12062b = a2;
        if (a2 != 0) {
            brVar.f12063c = 1;
            return brVar;
        }
        int b2 = hcVar.b(context, str);
        brVar.f12061a = b2;
        if (b2 != 0) {
            brVar.f12063c = -1;
        }
        return brVar;
    }

    public void w(View view, Matrix matrix) {
        if (f11785f) {
            try {
                arq.b(view, matrix);
            } catch (NoSuchMethodError unused) {
                f11785f = false;
            }
        }
    }

    public void x(View view, Matrix matrix) {
        if (k) {
            try {
                arq.c(view, matrix);
            } catch (NoSuchMethodError unused) {
                k = false;
            }
        }
    }

    @Override // g.eco
    public Iterator y(zzfxd zzfxdVar, CharSequence charSequence) {
        return new bft(charSequence);
    }

    public void z(View view, float f2) {
        if (h) {
            try {
                ckk.b(view, f2);
                return;
            } catch (NoSuchMethodError unused) {
                h = false;
            }
        }
        view.setAlpha(f2);
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public void zzD() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public void zzO(zzadq zzadqVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
    }

    @Override // g.ciq
    public boolean zza(String str) {
        new ebk(2, str).start();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* synthetic */ void zzb(Object obj) {
        ((zzcfk) obj).destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public zzadx zzw(int i2, int i3) {
        throw new UnsupportedOperationException();
    }
}
