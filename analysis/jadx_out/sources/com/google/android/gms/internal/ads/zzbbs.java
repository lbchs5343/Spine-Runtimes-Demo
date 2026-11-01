package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.ahn;
import g.ayh;
import g.cyk;
import g.uo;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbbs {

    public final class zza extends zzgyx<zza, zzb> implements zzf {
        public static final int zza = 7;
        public static final int zzb = 8;
        public static final int zzc = 9;
        public static final int zzd = 10;
        public static final int zze = 11;
        public static final int zzf = 12;
        public static final int zzg = 13;
        public static final int zzh = 14;
        public static final int zzi = 15;
        public static final int zzj = 16;
        public static final int zzk = 17;
        private static final zza zzl;
        private static volatile zzhaq<zza> zzm;
        private zzx zzA;
        private zzz zzB;
        private zzgzj<zzat> zzC;
        private int zzn;
        private int zzo;
        private int zzp = 1000;
        private zzg zzu;
        private zzi zzv;
        private zzgzj<zzd> zzw;
        private zzk zzx;
        private zzah zzy;
        private zzac zzz;

        /* renamed from: com.google.android.gms.internal.ads.zzbbs$zza$zza, reason: collision with other inner class name */
        public enum EnumC0207zza implements zzgzb {
            AD_INITIATER_UNSPECIFIED(0),
            BANNER(1),
            DFP_BANNER(2),
            INTERSTITIAL(3),
            DFP_INTERSTITIAL(4),
            NATIVE_EXPRESS(5),
            AD_LOADER(6),
            REWARD_BASED_VIDEO_AD(7),
            BANNER_SEARCH_ADS(8),
            GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
            APP_OPEN(10),
            REWARDED_INTERSTITIAL(11);


            /* renamed from: a, reason: collision with root package name */
            public static final o f4700a = new o();
            public static final int zzm = 0;
            public static final int zzn = 1;
            public static final int zzo = 2;
            public static final int zzp = 3;
            public static final int zzq = 4;
            public static final int zzr = 5;
            public static final int zzs = 6;
            public static final int zzt = 7;
            public static final int zzu = 8;
            public static final int zzv = 9;
            public static final int zzw = 10;
            public static final int zzx = 11;
            private final int zzA;

            EnumC0207zza(int i) {
                this.zzA = i;
            }

            public static EnumC0207zza zzb(int i) {
                switch (i) {
                    case 0:
                        return AD_INITIATER_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return DFP_BANNER;
                    case 3:
                        return INTERSTITIAL;
                    case 4:
                        return DFP_INTERSTITIAL;
                    case 5:
                        return NATIVE_EXPRESS;
                    case 6:
                        return AD_LOADER;
                    case 7:
                        return REWARD_BASED_VIDEO_AD;
                    case 8:
                        return BANNER_SEARCH_ADS;
                    case 9:
                        return GOOGLE_MOBILE_ADS_SDK_ADAPTER;
                    case 10:
                        return APP_OPEN;
                    case 11:
                        return REWARDED_INTERSTITIAL;
                    default:
                        return null;
                }
            }

            public static zzgzc<EnumC0207zza> zzd() {
                return f4700a;
            }

            public static zzgzd zze() {
                return ac.f3933a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(zza());
            }

            @Override // com.google.android.gms.internal.ads.zzgzb
            public final int zza() {
                return this.zzA;
            }
        }

        public final class zzb extends zzgyr<zza, zzb> implements zzf {
            public zzb zzA(zzac zzacVar) {
                f();
                zza.aj((zza) this.f8682e, zzacVar);
                return this;
            }

            public zzb zzB(zzg zzgVar) {
                f();
                zza.w((zza) this.f8682e, zzgVar);
                return this;
            }

            public zzb zzC(zzi zziVar) {
                f();
                zza.o((zza) this.f8682e, zziVar);
                return this;
            }

            public zzb zzD(zzah zzahVar) {
                f();
                zza.k((zza) this.f8682e, zzahVar);
                return this;
            }

            public zzb zzE(zzk zzkVar) {
                f();
                zza.g((zza) this.f8682e, zzkVar);
                return this;
            }

            public zzb zzF(int i) {
                f();
                zza.ad((zza) this.f8682e, i);
                return this;
            }

            public zzb zzG(int i) {
                f();
                zza.ag((zza) this.f8682e, i);
                return this;
            }

            public zzb zzH(EnumC0207zza enumC0207zza) {
                f();
                zza.m((zza) this.f8682e, enumC0207zza);
                return this;
            }

            public zzb zzI(zzx.zza zzaVar) {
                f();
                zza.f((zza) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zzb zzJ(zzx zzxVar) {
                f();
                zza.f((zza) this.f8682e, zzxVar);
                return this;
            }

            public zzb zzK(zzq zzqVar) {
                f();
                zza.z((zza) this.f8682e, zzqVar);
                return this;
            }

            public zzb zzL(zzz.zza zzaVar) {
                f();
                zza.j((zza) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zzb zzM(zzz zzzVar) {
                f();
                zza.j((zza) this.f8682e, zzzVar);
                return this;
            }

            public zzb zzN(zzac.zza zzaVar) {
                f();
                zza.ab((zza) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zzb zzO(zzac zzacVar) {
                f();
                zza.ab((zza) this.f8682e, zzacVar);
                return this;
            }

            public zzb zzP(int i, zzd.zzb zzbVar) {
                f();
                zza.ai((zza) this.f8682e, i, zzbVar.zzbr());
                return this;
            }

            public zzb zzQ(int i, zzd zzdVar) {
                f();
                zza.ai((zza) this.f8682e, i, zzdVar);
                return this;
            }

            public zzb zzR(zzg.zza zzaVar) {
                f();
                zza.b((zza) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zzb zzS(zzg zzgVar) {
                f();
                zza.b((zza) this.f8682e, zzgVar);
                return this;
            }

            public zzb zzT(zzi.zza zzaVar) {
                f();
                zza.a((zza) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zzb zzU(zzi zziVar) {
                f();
                zza.a((zza) this.f8682e, zziVar);
                return this;
            }

            public zzb zzV(zzah.zza zzaVar) {
                f();
                zza.af((zza) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zzb zzW(zzah zzahVar) {
                f();
                zza.af((zza) this.f8682e, zzahVar);
                return this;
            }

            public zzb zzX(zzk.zza zzaVar) {
                f();
                zza.u((zza) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zzb zzY(zzk zzkVar) {
                f();
                zza.u((zza) this.f8682e, zzkVar);
                return this;
            }

            public zzb zzZ(int i, zzat.zza zzaVar) {
                f();
                zza.ah((zza) this.f8682e, i, zzaVar.zzbr());
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public int zza() {
                return ((zza) this.f8682e).zza();
            }

            public zzb zzaa(int i, zzat zzatVar) {
                f();
                zza.ah((zza) this.f8682e, i, zzatVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzd zzab(int i) {
                return ((zza) this.f8682e).zzab(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzg zzac() {
                return ((zza) this.f8682e).zzac();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzi zzad() {
                return ((zza) this.f8682e).zzad();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzk zzae() {
                return ((zza) this.f8682e).zzae();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzq zzaf() {
                return ((zza) this.f8682e).zzaf();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzx zzag() {
                return ((zza) this.f8682e).zzag();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzz zzah() {
                return ((zza) this.f8682e).zzah();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzac zzai() {
                return ((zza) this.f8682e).zzai();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzah zzaj() {
                return ((zza) this.f8682e).zzaj();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public zzat zzak(int i) {
                return ((zza) this.f8682e).zzak(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public List<zzd> zzal() {
                return Collections.unmodifiableList(((zza) this.f8682e).zzal());
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public List<zzat> zzam() {
                return Collections.unmodifiableList(((zza) this.f8682e).zzam());
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public boolean zzan() {
                return ((zza) this.f8682e).zzan();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public boolean zzao() {
                return ((zza) this.f8682e).zzao();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public boolean zzap() {
                return ((zza) this.f8682e).zzap();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public boolean zzaq() {
                return ((zza) this.f8682e).zzaq();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public boolean zzar() {
                return ((zza) this.f8682e).zzar();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public boolean zzas() {
                return ((zza) this.f8682e).zzas();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public boolean zzat() {
                return ((zza) this.f8682e).zzat();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public boolean zzau() {
                return ((zza) this.f8682e).zzau();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public boolean zzav() {
                return ((zza) this.f8682e).zzav();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public int zzb() {
                return ((zza) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzf
            public EnumC0207zza zzc() {
                return ((zza) this.f8682e).zzc();
            }

            public zzb zzd(Iterable<? extends zzd> iterable) {
                f();
                zza.al((zza) this.f8682e, iterable);
                return this;
            }

            public zzb zze(Iterable<? extends zzat> iterable) {
                f();
                zza.d((zza) this.f8682e, iterable);
                return this;
            }

            public zzb zzf(zzd.zzb zzbVar) {
                f();
                zza.ak((zza) this.f8682e, zzbVar.zzbr());
                return this;
            }

            public zzb zzg(zzd zzdVar) {
                f();
                zza.ak((zza) this.f8682e, zzdVar);
                return this;
            }

            public zzb zzh(int i, zzd.zzb zzbVar) {
                f();
                zza.v((zza) this.f8682e, i, zzbVar.zzbr());
                return this;
            }

            public zzb zzi(int i, zzd zzdVar) {
                f();
                zza.v((zza) this.f8682e, i, zzdVar);
                return this;
            }

            public zzb zzj(zzat.zza zzaVar) {
                f();
                zza.r((zza) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zzb zzk(zzat zzatVar) {
                f();
                zza.r((zza) this.f8682e, zzatVar);
                return this;
            }

            public zzb zzl(int i, zzat.zza zzaVar) {
                f();
                zza.e((zza) this.f8682e, i, zzaVar.zzbr());
                return this;
            }

            public zzb zzm(int i, zzat zzatVar) {
                f();
                zza.e((zza) this.f8682e, i, zzatVar);
                return this;
            }

            public zzb zzn() {
                f();
                zza.p((zza) this.f8682e);
                return this;
            }

            public zzb zzo() {
                f();
                zza.i((zza) this.f8682e);
                return this;
            }

            public zzb zzp() {
                f();
                zza.ac((zza) this.f8682e);
                return this;
            }

            public zzb zzq() {
                f();
                zza.y((zza) this.f8682e);
                return this;
            }

            public zzb zzr() {
                f();
                zza.h((zza) this.f8682e);
                return this;
            }

            public zzb zzs() {
                f();
                zza.x((zza) this.f8682e);
                return this;
            }

            public zzb zzt() {
                f();
                zza.ae((zza) this.f8682e);
                return this;
            }

            public zzb zzu() {
                f();
                zza.aa((zza) this.f8682e);
                return this;
            }

            public zzb zzv() {
                f();
                zza.n((zza) this.f8682e);
                return this;
            }

            public zzb zzw() {
                f();
                zza.l((zza) this.f8682e);
                return this;
            }

            public zzb zzx() {
                f();
                zza.t((zza) this.f8682e);
                return this;
            }

            public zzb zzy(zzx zzxVar) {
                f();
                zza.q((zza) this.f8682e, zzxVar);
                return this;
            }

            public zzb zzz(zzz zzzVar) {
                f();
                zza.am((zza) this.f8682e, zzzVar);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzl = zzaVar;
            zzgyx.cb(zza.class, zzaVar);
        }

        public zza() {
            ahn ahnVar = ahn.f10232c;
            this.zzw = ahnVar;
            this.zzC = ahnVar;
        }

        public static void a(zza zzaVar, zzi zziVar) {
            zzaVar.getClass();
            zziVar.getClass();
            zzaVar.zzv = zziVar;
            zzaVar.zzn |= 8;
        }

        public static void aa(zza zzaVar) {
            zzaVar.zzv = null;
            zzaVar.zzn &= -9;
        }

        public static void ab(zza zzaVar, zzac zzacVar) {
            zzaVar.getClass();
            zzacVar.getClass();
            zzaVar.zzz = zzacVar;
            zzaVar.zzn |= 64;
        }

        public static void ac(zza zzaVar) {
            zzaVar.zzn &= -3;
            zzaVar.zzp = 1000;
        }

        public static void ad(zza zzaVar, int i) {
            zzaVar.an();
            zzaVar.zzw.remove(i);
        }

        public static void ae(zza zzaVar) {
            zzaVar.zzu = null;
            zzaVar.zzn &= -5;
        }

        public static void af(zza zzaVar, zzah zzahVar) {
            zzaVar.getClass();
            zzahVar.getClass();
            zzaVar.zzy = zzahVar;
            zzaVar.zzn |= 32;
        }

        public static void ag(zza zzaVar, int i) {
            zzaVar.ao();
            zzaVar.zzC.remove(i);
        }

        public static void ah(zza zzaVar, int i, zzat zzatVar) {
            zzaVar.getClass();
            zzatVar.getClass();
            zzaVar.ao();
            zzaVar.zzC.set(i, zzatVar);
        }

        public static void ai(zza zzaVar, int i, zzd zzdVar) {
            zzaVar.getClass();
            zzdVar.getClass();
            zzaVar.an();
            zzaVar.zzw.set(i, zzdVar);
        }

        public static void aj(zza zzaVar, zzac zzacVar) {
            zzaVar.getClass();
            zzacVar.getClass();
            zzac zzacVar2 = zzaVar.zzz;
            if (zzacVar2 != null && zzacVar2 != zzac.zzf()) {
                zzac.zza zzc2 = zzac.zzc(zzacVar2);
                zzc2.zzbj(zzacVar);
                zzacVar = zzc2.zzbs();
            }
            zzaVar.zzz = zzacVar;
            zzaVar.zzn |= 64;
        }

        public static void ak(zza zzaVar, zzd zzdVar) {
            zzaVar.getClass();
            zzdVar.getClass();
            zzaVar.an();
            zzaVar.zzw.add(zzdVar);
        }

        public static void al(zza zzaVar, Iterable iterable) {
            zzaVar.an();
            zzgwy.bi(iterable, zzaVar.zzw);
        }

        public static void am(zza zzaVar, zzz zzzVar) {
            zzaVar.getClass();
            zzzVar.getClass();
            zzz zzzVar2 = zzaVar.zzB;
            if (zzzVar2 != null && zzzVar2 != zzz.zzh()) {
                zzz.zza zzf2 = zzz.zzf(zzzVar2);
                zzf2.zzbj(zzzVar);
                zzzVar = zzf2.zzbs();
            }
            zzaVar.zzB = zzzVar;
            zzaVar.zzn |= 256;
        }

        public static void b(zza zzaVar, zzg zzgVar) {
            zzaVar.getClass();
            zzgVar.getClass();
            zzaVar.zzu = zzgVar;
            zzaVar.zzn |= 4;
        }

        public static void d(zza zzaVar, Iterable iterable) {
            zzaVar.ao();
            zzgwy.bi(iterable, zzaVar.zzC);
        }

        public static void e(zza zzaVar, int i, zzat zzatVar) {
            zzaVar.getClass();
            zzatVar.getClass();
            zzaVar.ao();
            zzaVar.zzC.add(i, zzatVar);
        }

        public static void f(zza zzaVar, zzx zzxVar) {
            zzaVar.getClass();
            zzxVar.getClass();
            zzaVar.zzA = zzxVar;
            zzaVar.zzn |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        }

        public static void g(zza zzaVar, zzk zzkVar) {
            zzaVar.getClass();
            zzkVar.getClass();
            zzk zzkVar2 = zzaVar.zzx;
            if (zzkVar2 != null && zzkVar2 != zzk.zzh()) {
                zzk.zza zzf2 = zzk.zzf(zzkVar2);
                zzf2.zzbj(zzkVar);
                zzkVar = zzf2.zzbs();
            }
            zzaVar.zzx = zzkVar;
            zzaVar.zzn |= 16;
        }

        public static void h(zza zzaVar) {
            zzaVar.zzz = null;
            zzaVar.zzn &= -65;
        }

        public static void i(zza zzaVar) {
            zzaVar.zzA = null;
            zzaVar.zzn &= -129;
        }

        public static void j(zza zzaVar, zzz zzzVar) {
            zzaVar.getClass();
            zzzVar.getClass();
            zzaVar.zzB = zzzVar;
            zzaVar.zzn |= 256;
        }

        public static void k(zza zzaVar, zzah zzahVar) {
            zzaVar.getClass();
            zzahVar.getClass();
            zzah zzahVar2 = zzaVar.zzy;
            if (zzahVar2 != null && zzahVar2 != zzah.zzn()) {
                zzah.zza zzl2 = zzah.zzl(zzahVar2);
                zzl2.zzbj(zzahVar);
                zzahVar = zzl2.zzbs();
            }
            zzaVar.zzy = zzahVar;
            zzaVar.zzn |= 32;
        }

        public static void l(zza zzaVar) {
            zzaVar.zzx = null;
            zzaVar.zzn &= -17;
        }

        public static void m(zza zzaVar, EnumC0207zza enumC0207zza) {
            zzaVar.getClass();
            zzaVar.zzo = enumC0207zza.zza();
            zzaVar.zzn |= 1;
        }

        public static void n(zza zzaVar) {
            zzaVar.zzy = null;
            zzaVar.zzn &= -33;
        }

        public static void o(zza zzaVar, zzi zziVar) {
            zzaVar.getClass();
            zziVar.getClass();
            zzi zziVar2 = zzaVar.zzv;
            if (zziVar2 != null && zziVar2 != zzi.zzh()) {
                zzi.zza zzf2 = zzi.zzf(zziVar2);
                zzf2.zzbj(zziVar);
                zziVar = zzf2.zzbs();
            }
            zzaVar.zzv = zziVar;
            zzaVar.zzn |= 8;
        }

        public static void p(zza zzaVar) {
            zzaVar.zzn &= -2;
            zzaVar.zzo = 0;
        }

        public static void q(zza zzaVar, zzx zzxVar) {
            zzaVar.getClass();
            zzxVar.getClass();
            zzx zzxVar2 = zzaVar.zzA;
            if (zzxVar2 != null && zzxVar2 != zzx.zzh()) {
                zzx.zza zzf2 = zzx.zzf(zzxVar2);
                zzf2.zzbj(zzxVar);
                zzxVar = zzf2.zzbs();
            }
            zzaVar.zzA = zzxVar;
            zzaVar.zzn |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        }

        public static void r(zza zzaVar, zzat zzatVar) {
            zzaVar.getClass();
            zzatVar.getClass();
            zzaVar.ao();
            zzaVar.zzC.add(zzatVar);
        }

        public static void t(zza zzaVar) {
            zzaVar.getClass();
            zzaVar.zzC = ahn.f10232c;
        }

        public static void u(zza zzaVar, zzk zzkVar) {
            zzaVar.getClass();
            zzkVar.getClass();
            zzaVar.zzx = zzkVar;
            zzaVar.zzn |= 16;
        }

        public static void v(zza zzaVar, int i, zzd zzdVar) {
            zzaVar.getClass();
            zzdVar.getClass();
            zzaVar.an();
            zzaVar.zzw.add(i, zzdVar);
        }

        public static void w(zza zzaVar, zzg zzgVar) {
            zzaVar.getClass();
            zzgVar.getClass();
            zzg zzgVar2 = zzaVar.zzu;
            if (zzgVar2 != null && zzgVar2 != zzg.zzh()) {
                zzg.zza zzf2 = zzg.zzf(zzgVar2);
                zzf2.zzbj(zzgVar);
                zzgVar = zzf2.zzbs();
            }
            zzaVar.zzu = zzgVar;
            zzaVar.zzn |= 4;
        }

        public static void x(zza zzaVar) {
            zzaVar.getClass();
            zzaVar.zzw = ahn.f10232c;
        }

        public static void y(zza zzaVar) {
            zzaVar.zzB = null;
            zzaVar.zzn &= -257;
        }

        public static void z(zza zzaVar, zzq zzqVar) {
            zzaVar.getClass();
            zzaVar.zzp = zzqVar.zza();
            zzaVar.zzn |= 2;
        }

        public static zzb zzd() {
            return (zzb) zzl.cl();
        }

        public static zzb zzf(zza zzaVar) {
            return (zzb) zzl.ci(zzaVar);
        }

        public static zza zzh() {
            return zzl;
        }

        public static zza zzi(InputStream inputStream) throws IOException {
            return (zza) zzgyx.br(zzl, inputStream);
        }

        public static zza zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zza) zzgyx.bo(zzl, inputStream, zzgyhVar);
        }

        public static zza zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zza) zzgyx.by(zzl, zzgxpVar);
        }

        public static zza zzl(zzgxv zzgxvVar) throws IOException {
            return (zza) zzgyx.ca(zzl, zzgxvVar);
        }

        public static zza zzm(InputStream inputStream) throws IOException {
            return (zza) zzgyx.ch(zzl, inputStream);
        }

        public static zza zzn(ByteBuffer byteBuffer) throws zzgzm {
            return (zza) zzgyx.bx(zzl, byteBuffer);
        }

        public static zza zzo(byte[] bArr) throws zzgzm {
            return (zza) zzgyx.cc(zzl, bArr);
        }

        public static zza zzp(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zza) zzgyx.bu(zzl, zzgxpVar, zzgyhVar);
        }

        public static zza zzq(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zza) zzgyx.bv(zzl, zzgxvVar, zzgyhVar);
        }

        public static zza zzr(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zza) zzgyx.bw(zzl, inputStream, zzgyhVar);
        }

        public static zza zzs(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zza) zzgyx.cf(zzl, byteBuffer, zzgyhVar);
        }

        public static zza zzt(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zza) zzgyx.bp(zzl, bArr, zzgyhVar);
        }

        public static zzhaq<zza> zzw() {
            return zzl.zzbN();
        }

        public final void an() {
            zzgzj<zzd> zzgzjVar = this.zzw;
            if (zzgzjVar.zzc()) {
                return;
            }
            this.zzw = zzgyx.bn(zzgzjVar);
        }

        public final void ao() {
            zzgzj<zzat> zzgzjVar = this.zzC;
            if (zzgzjVar.zzc()) {
                return;
            }
            this.zzC = zzgyx.bn(zzgzjVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzl, "\u0004\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007᠌\u0000\b᠌\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzn", "zzo", EnumC0207zza.zze(), "zzp", zzq.zze(), "zzu", "zzv", "zzw", zzd.class, "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", zzat.class});
                case 3:
                    return new zza();
                case 4:
                    return new zzb(zzl);
                case 5:
                    return zzl;
                case 6:
                    zzhaq<zza> zzhaqVar2 = zzm;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zza.class) {
                        try {
                            zzhaqVar = zzm;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzl);
                                zzm = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public int zza() {
            return this.zzw.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzd zzab(int i) {
            return this.zzw.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzg zzac() {
            zzg zzgVar = this.zzu;
            return zzgVar == null ? zzg.zzh() : zzgVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzi zzad() {
            zzi zziVar = this.zzv;
            return zziVar == null ? zzi.zzh() : zziVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzk zzae() {
            zzk zzkVar = this.zzx;
            return zzkVar == null ? zzk.zzh() : zzkVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzq zzaf() {
            zzq zzb2 = zzq.zzb(this.zzp);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzx zzag() {
            zzx zzxVar = this.zzA;
            return zzxVar == null ? zzx.zzh() : zzxVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzz zzah() {
            zzz zzzVar = this.zzB;
            return zzzVar == null ? zzz.zzh() : zzzVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzac zzai() {
            zzac zzacVar = this.zzz;
            return zzacVar == null ? zzac.zzf() : zzacVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzah zzaj() {
            zzah zzahVar = this.zzy;
            return zzahVar == null ? zzah.zzn() : zzahVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public zzat zzak(int i) {
            return this.zzC.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public List<zzd> zzal() {
            return this.zzw;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public List<zzat> zzam() {
            return this.zzC;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public boolean zzan() {
            return (this.zzn & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public boolean zzao() {
            return (this.zzn & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public boolean zzap() {
            return (this.zzn & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public boolean zzaq() {
            return (this.zzn & 256) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public boolean zzar() {
            return (this.zzn & 64) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public boolean zzas() {
            return (this.zzn & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public boolean zzat() {
            return (this.zzn & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public boolean zzau() {
            return (this.zzn & 32) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public boolean zzav() {
            return (this.zzn & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public int zzb() {
            return this.zzC.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzf
        public EnumC0207zza zzc() {
            EnumC0207zza zzb2 = EnumC0207zza.zzb(this.zzo);
            return zzb2 == null ? EnumC0207zza.AD_INITIATER_UNSPECIFIED : zzb2;
        }

        public zze zzu(int i) {
            return this.zzw.get(i);
        }

        public zzbi zzv(int i) {
            return this.zzC.get(i);
        }

        public List<? extends zze> zzx() {
            return this.zzw;
        }

        public List<? extends zzbi> zzy() {
            return this.zzC;
        }
    }

    public interface zzaa extends zzhaj {
        boolean zzA();

        boolean zzB();

        int zza();

        zzq zzb();

        zzv zzc();

        zzan zzw(int i);

        zzap zzx();

        List<zzan> zzy();

        boolean zzz();
    }

    public final class zzab extends zzgyx<zzab, zza> implements zzae {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzab zzc;
        private static volatile zzhaq<zzab> zzd;
        private int zze;
        private int zzf;
        private int zzg;

        public final class zza extends zzgyr<zzab, zza> implements zzae {
            public zza zza() {
                f();
                zzab.f((zzab) this.f8682e);
                return this;
            }

            public zza zzb() {
                f();
                zzab.e((zzab) this.f8682e);
                return this;
            }

            public zza zzc(zzb zzbVar) {
                f();
                zzab.d((zzab) this.f8682e, zzbVar);
                return this;
            }

            public zza zzd(zzc zzcVar) {
                f();
                zzab.b((zzab) this.f8682e, zzcVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzae
            public zzb zze() {
                return ((zzab) this.f8682e).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzae
            public zzc zzf() {
                return ((zzab) this.f8682e).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzae
            public boolean zzg() {
                return ((zzab) this.f8682e).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzae
            public boolean zzh() {
                return ((zzab) this.f8682e).zzh();
            }
        }

        public enum zzb implements zzgzb {
            CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
            TWO_G(1),
            THREE_G(2),
            LTE(4);


            /* renamed from: a, reason: collision with root package name */
            public static final ai f4702a = new ai();
            public static final int zze = 0;
            public static final int zzf = 1;
            public static final int zzg = 2;
            public static final int zzh = 4;
            private final int zzk;

            zzb(int i) {
                this.zzk = i;
            }

            public static zzb zzb(int i) {
                if (i == 0) {
                    return CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                }
                if (i == 1) {
                    return TWO_G;
                }
                if (i == 2) {
                    return THREE_G;
                }
                if (i != 4) {
                    return null;
                }
                return LTE;
            }

            public static zzgzc<zzb> zzd() {
                return f4702a;
            }

            public static zzgzd zze() {
                return k.f3965a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(zza());
            }

            @Override // com.google.android.gms.internal.ads.zzgzb
            public final int zza() {
                return this.zzk;
            }
        }

        public enum zzc implements zzgzb {
            NETWORKTYPE_UNSPECIFIED(0),
            CELL(1),
            WIFI(2);


            /* renamed from: a, reason: collision with root package name */
            public static final n f4704a = new n();
            public static final int zzd = 0;
            public static final int zze = 1;
            public static final int zzf = 2;
            private final int zzi;

            zzc(int i) {
                this.zzi = i;
            }

            public static zzc zzb(int i) {
                if (i == 0) {
                    return NETWORKTYPE_UNSPECIFIED;
                }
                if (i == 1) {
                    return CELL;
                }
                if (i != 2) {
                    return null;
                }
                return WIFI;
            }

            public static zzgzc<zzc> zzd() {
                return f4704a;
            }

            public static zzgzd zze() {
                return w.f3994a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(zza());
            }

            @Override // com.google.android.gms.internal.ads.zzgzb
            public final int zza() {
                return this.zzi;
            }
        }

        static {
            zzab zzabVar = new zzab();
            zzc = zzabVar;
            zzgyx.cb(zzab.class, zzabVar);
        }

        public static void b(zzab zzabVar, zzc zzcVar) {
            zzabVar.getClass();
            zzabVar.zzf = zzcVar.zza();
            zzabVar.zze |= 1;
        }

        public static void d(zzab zzabVar, zzb zzbVar) {
            zzabVar.getClass();
            zzabVar.zzg = zzbVar.zza();
            zzabVar.zze |= 2;
        }

        public static void e(zzab zzabVar) {
            zzabVar.zze &= -2;
            zzabVar.zzf = 0;
        }

        public static void f(zzab zzabVar) {
            zzabVar.zze &= -3;
            zzabVar.zzg = 0;
        }

        public static zza zza() {
            return (zza) zzc.cl();
        }

        public static zza zzb(zzab zzabVar) {
            return (zza) zzc.ci(zzabVar);
        }

        public static zzab zzd() {
            return zzc;
        }

        public static zzab zzi(InputStream inputStream) throws IOException {
            return (zzab) zzgyx.br(zzc, inputStream);
        }

        public static zzab zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzab) zzgyx.bo(zzc, inputStream, zzgyhVar);
        }

        public static zzab zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zzab) zzgyx.by(zzc, zzgxpVar);
        }

        public static zzab zzl(zzgxv zzgxvVar) throws IOException {
            return (zzab) zzgyx.ca(zzc, zzgxvVar);
        }

        public static zzab zzm(InputStream inputStream) throws IOException {
            return (zzab) zzgyx.ch(zzc, inputStream);
        }

        public static zzab zzn(ByteBuffer byteBuffer) throws zzgzm {
            return (zzab) zzgyx.bx(zzc, byteBuffer);
        }

        public static zzab zzo(byte[] bArr) throws zzgzm {
            return (zzab) zzgyx.cc(zzc, bArr);
        }

        public static zzab zzp(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzab) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
        }

        public static zzab zzq(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzab) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
        }

        public static zzab zzr(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzab) zzgyx.bw(zzc, inputStream, zzgyhVar);
        }

        public static zzab zzs(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzab) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
        }

        public static zzab zzt(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzab) zzgyx.bp(zzc, bArr, zzgyhVar);
        }

        public static zzhaq<zzab> zzu() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zze", "zzf", zzc.zze(), "zzg", zzb.zze()});
                case 3:
                    return new zzab();
                case 4:
                    return new zza(zzc);
                case 5:
                    return zzc;
                case 6:
                    zzhaq<zzab> zzhaqVar2 = zzd;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzab.class) {
                        try {
                            zzhaqVar = zzd;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzc);
                                zzd = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzae
        public zzb zze() {
            zzb zzb2 = zzb.zzb(this.zzg);
            return zzb2 == null ? zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzae
        public zzc zzf() {
            zzc zzb2 = zzc.zzb(this.zzf);
            return zzb2 == null ? zzc.NETWORKTYPE_UNSPECIFIED : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzae
        public boolean zzg() {
            return (this.zze & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzae
        public boolean zzh() {
            return (this.zze & 1) != 0;
        }
    }

    public final class zzac extends zzgyx<zzac, zza> implements zzad {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzac zzc;
        private static volatile zzhaq<zzac> zzd;
        private int zze;
        private int zzf;
        private zzap zzg;

        public final class zza extends zzgyr<zzac, zza> implements zzad {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzad
            public zzq zza() {
                return ((zzac) this.f8682e).zza();
            }

            public zza zzb() {
                f();
                zzac.f((zzac) this.f8682e);
                return this;
            }

            public zza zzc() {
                f();
                zzac.e((zzac) this.f8682e);
                return this;
            }

            public zza zzd(zzap zzapVar) {
                f();
                zzac.b((zzac) this.f8682e, zzapVar);
                return this;
            }

            public zza zze(zzap.zza zzaVar) {
                f();
                zzac.d((zzac) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzf(zzap zzapVar) {
                f();
                zzac.d((zzac) this.f8682e, zzapVar);
                return this;
            }

            public zza zzg(zzq zzqVar) {
                f();
                zzac.a((zzac) this.f8682e, zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzad
            public zzap zzh() {
                return ((zzac) this.f8682e).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzad
            public boolean zzi() {
                return ((zzac) this.f8682e).zzi();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzad
            public boolean zzj() {
                return ((zzac) this.f8682e).zzj();
            }
        }

        static {
            zzac zzacVar = new zzac();
            zzc = zzacVar;
            zzgyx.cb(zzac.class, zzacVar);
        }

        public static void a(zzac zzacVar, zzq zzqVar) {
            zzacVar.getClass();
            zzacVar.zzf = zzqVar.zza();
            zzacVar.zze |= 1;
        }

        public static void b(zzac zzacVar, zzap zzapVar) {
            zzacVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzacVar.zzg;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzacVar.zzg = zzapVar;
            zzacVar.zze |= 2;
        }

        public static void d(zzac zzacVar, zzap zzapVar) {
            zzacVar.getClass();
            zzapVar.getClass();
            zzacVar.zzg = zzapVar;
            zzacVar.zze |= 2;
        }

        public static void e(zzac zzacVar) {
            zzacVar.zze &= -2;
            zzacVar.zzf = 0;
        }

        public static void f(zzac zzacVar) {
            zzacVar.zzg = null;
            zzacVar.zze &= -3;
        }

        public static zza zzb() {
            return (zza) zzc.cl();
        }

        public static zza zzc(zzac zzacVar) {
            return (zza) zzc.ci(zzacVar);
        }

        public static zzac zzf() {
            return zzc;
        }

        public static zzac zzg(InputStream inputStream) throws IOException {
            return (zzac) zzgyx.br(zzc, inputStream);
        }

        public static zzac zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzac) zzgyx.bo(zzc, inputStream, zzgyhVar);
        }

        public static zzac zzl(zzgxp zzgxpVar) throws zzgzm {
            return (zzac) zzgyx.by(zzc, zzgxpVar);
        }

        public static zzac zzm(zzgxv zzgxvVar) throws IOException {
            return (zzac) zzgyx.ca(zzc, zzgxvVar);
        }

        public static zzac zzn(InputStream inputStream) throws IOException {
            return (zzac) zzgyx.ch(zzc, inputStream);
        }

        public static zzac zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzac) zzgyx.bx(zzc, byteBuffer);
        }

        public static zzac zzp(byte[] bArr) throws zzgzm {
            return (zzac) zzgyx.cc(zzc, bArr);
        }

        public static zzac zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzac) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
        }

        public static zzac zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzac) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
        }

        public static zzac zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzac) zzgyx.bw(zzc, inputStream, zzgyhVar);
        }

        public static zzac zzt(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzac) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
        }

        public static zzac zzu(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzac) zzgyx.bp(zzc, bArr, zzgyhVar);
        }

        public static zzhaq<zzac> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", zzq.zze(), "zzg"});
                case 3:
                    return new zzac();
                case 4:
                    return new zza(zzc);
                case 5:
                    return zzc;
                case 6:
                    zzhaq<zzac> zzhaqVar2 = zzd;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzac.class) {
                        try {
                            zzhaqVar = zzd;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzc);
                                zzd = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzad
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzf);
            return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzad
        public zzap zzh() {
            zzap zzapVar = this.zzg;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzad
        public boolean zzi() {
            return (this.zze & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzad
        public boolean zzj() {
            return (this.zze & 1) != 0;
        }
    }

    public interface zzad extends zzhaj {
        zzq zza();

        zzap zzh();

        boolean zzi();

        boolean zzj();
    }

    public interface zzae extends zzhaj {
        zzab.zzb zze();

        zzab.zzc zzf();

        boolean zzg();

        boolean zzh();
    }

    public final class zzaf extends zzgyx<zzaf, zzc> implements zzag {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        public static final int zzh = 8;
        private static final zzaf zzi;
        private static volatile zzhaq<zzaf> zzj;
        private int zzk;
        private int zzm;
        private int zzn;
        private long zzo;
        private long zzv;
        private int zzw;
        private zzgzj<zza> zzl = ahn.f10232c;
        private String zzp = "";
        private String zzu = "";

        public final class zza extends zzgyx<zza, C0208zza> implements zzb {
            public static final int zza = 1;
            public static final int zzb = 2;
            public static final int zzc = 3;
            public static final int zzd = 4;
            public static final int zze = 5;
            public static final int zzf = 6;
            public static final int zzg = 7;
            public static final int zzh = 8;
            public static final int zzi = 9;
            public static final int zzj = 10;
            public static final int zzk = 11;
            public static final int zzl = 12;
            public static final int zzm = 13;
            private static final zzgzg<zzd.zza> zzn = new am();
            private static final zza zzo;
            private static volatile zzhaq<zza> zzp;
            private zzab zzA;
            private int zzB;
            private int zzC;
            private int zzD;
            private int zzE;
            private int zzF;
            private int zzG;
            private long zzH;
            private int zzu;
            private long zzv;
            private int zzw;
            private long zzx;
            private long zzy;
            private zzgzf zzz = uo.f20109c;

            /* renamed from: com.google.android.gms.internal.ads.zzbbs$zzaf$zza$zza, reason: collision with other inner class name */
            public final class C0208zza extends zzgyr<zza, C0208zza> implements zzb {
                public C0208zza zzA() {
                    f();
                    zza.l((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzB() {
                    f();
                    zza.j((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzC(zzab zzabVar) {
                    f();
                    zza.q((zza) this.f8682e, zzabVar);
                    return this;
                }

                public C0208zza zzD(zzq zzqVar) {
                    f();
                    zza.o((zza) this.f8682e, zzqVar);
                    return this;
                }

                public C0208zza zzE(zzq zzqVar) {
                    f();
                    zza.ae((zza) this.f8682e, zzqVar);
                    return this;
                }

                public C0208zza zzF(int i, zzd.zza zzaVar) {
                    f();
                    zza.ac((zza) this.f8682e, i, zzaVar);
                    return this;
                }

                public C0208zza zzG(int i) {
                    f();
                    zza.t(i, (zza) this.f8682e);
                    return this;
                }

                public C0208zza zzH(zzd zzdVar) {
                    f();
                    zza.m((zza) this.f8682e, zzdVar);
                    return this;
                }

                public C0208zza zzI(zzab.zza zzaVar) {
                    f();
                    zza.i((zza) this.f8682e, zzaVar.zzbr());
                    return this;
                }

                public C0208zza zzJ(zzab zzabVar) {
                    f();
                    zza.i((zza) this.f8682e, zzabVar);
                    return this;
                }

                public C0208zza zzK(zzq zzqVar) {
                    f();
                    zza.f((zza) this.f8682e, zzqVar);
                    return this;
                }

                public C0208zza zzL(long j) {
                    f();
                    zza.y((zza) this.f8682e, j);
                    return this;
                }

                public C0208zza zzM(long j) {
                    f();
                    zza.ab((zza) this.f8682e, j);
                    return this;
                }

                public C0208zza zzN(zzq zzqVar) {
                    f();
                    zza.k((zza) this.f8682e, zzqVar);
                    return this;
                }

                public C0208zza zzO(long j) {
                    f();
                    zza.b((zza) this.f8682e, j);
                    return this;
                }

                public C0208zza zzP(long j) {
                    f();
                    zza.a((zza) this.f8682e, j);
                    return this;
                }

                public C0208zza zzQ(zzq zzqVar) {
                    f();
                    zza.aa((zza) this.f8682e, zzqVar);
                    return this;
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public zzd zzR() {
                    return ((zza) this.f8682e).zzR();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public List<zzd.zza> zzS() {
                    return ((zza) this.f8682e).zzS();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzT() {
                    return ((zza) this.f8682e).zzT();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzU() {
                    return ((zza) this.f8682e).zzU();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzV() {
                    return ((zza) this.f8682e).zzV();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzW() {
                    return ((zza) this.f8682e).zzW();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzX() {
                    return ((zza) this.f8682e).zzX();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzY() {
                    return ((zza) this.f8682e).zzY();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzZ() {
                    return ((zza) this.f8682e).zzZ();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public int zza() {
                    return ((zza) this.f8682e).zza();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzaa() {
                    return ((zza) this.f8682e).zzaa();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzab() {
                    return ((zza) this.f8682e).zzab();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzac() {
                    return ((zza) this.f8682e).zzac();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzad() {
                    return ((zza) this.f8682e).zzad();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public boolean zzae() {
                    return ((zza) this.f8682e).zzae();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public int zzb() {
                    return ((zza) this.f8682e).zzb();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public long zzc() {
                    return ((zza) this.f8682e).zzc();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public long zzd() {
                    return ((zza) this.f8682e).zzd();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public long zze() {
                    return ((zza) this.f8682e).zze();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public long zzf() {
                    return ((zza) this.f8682e).zzf();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public zzd.zza zzg(int i) {
                    return ((zza) this.f8682e).zzg(i);
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public zzq zzh() {
                    return ((zza) this.f8682e).zzh();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public zzq zzi() {
                    return ((zza) this.f8682e).zzi();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public zzq zzj() {
                    return ((zza) this.f8682e).zzj();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public zzq zzk() {
                    return ((zza) this.f8682e).zzk();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public zzq zzl() {
                    return ((zza) this.f8682e).zzl();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
                public zzab zzm() {
                    return ((zza) this.f8682e).zzm();
                }

                public C0208zza zzn(Iterable<? extends zzd.zza> iterable) {
                    f();
                    zza.d((zza) this.f8682e, iterable);
                    return this;
                }

                public C0208zza zzo(zzd.zza zzaVar) {
                    f();
                    zza.ad((zza) this.f8682e, zzaVar);
                    return this;
                }

                public C0208zza zzp() {
                    f();
                    zza.s((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzq() {
                    f();
                    zza.p((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzr() {
                    f();
                    zza.e((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzs() {
                    f();
                    zza.n((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzt() {
                    f();
                    zza.h((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzu() {
                    f();
                    zza.x((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzv() {
                    f();
                    zza.v((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzw() {
                    f();
                    zza.g((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzx() {
                    f();
                    zza.u((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzy() {
                    f();
                    zza.z((zza) this.f8682e);
                    return this;
                }

                public C0208zza zzz() {
                    f();
                    zza.w((zza) this.f8682e);
                    return this;
                }
            }

            static {
                zza zzaVar = new zza();
                zzo = zzaVar;
                zzgyx.cb(zza.class, zzaVar);
            }

            public static void a(zza zzaVar, long j) {
                zzaVar.zzu |= 2048;
                zzaVar.zzH = j;
            }

            public static void aa(zza zzaVar, zzq zzqVar) {
                zzaVar.getClass();
                zzaVar.zzB = zzqVar.zza();
                zzaVar.zzu |= 32;
            }

            public static void ab(zza zzaVar, long j) {
                zzaVar.zzu |= 4;
                zzaVar.zzx = j;
            }

            public static void ac(zza zzaVar, int i, zzd.zza zzaVar2) {
                zzaVar.getClass();
                zzaVar2.getClass();
                zzgzf zzgzfVar = zzaVar.zzz;
                if (!zzgzfVar.zzc()) {
                    zzaVar.zzz = zzgyx.cg(zzgzfVar);
                }
                zzaVar.zzz.zze(i, zzaVar2.zza());
            }

            public static void ad(zza zzaVar, zzd.zza zzaVar2) {
                zzaVar.getClass();
                zzaVar2.getClass();
                zzgzf zzgzfVar = zzaVar.zzz;
                if (!zzgzfVar.zzc()) {
                    zzaVar.zzz = zzgyx.cg(zzgzfVar);
                }
                zzaVar.zzz.zzi(zzaVar2.zza());
            }

            public static void ae(zza zzaVar, zzq zzqVar) {
                zzaVar.getClass();
                zzaVar.zzD = zzqVar.zza();
                zzaVar.zzu |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
            }

            public static void b(zza zzaVar, long j) {
                zzaVar.zzu |= 1;
                zzaVar.zzv = j;
            }

            public static void d(zza zzaVar, Iterable iterable) {
                zzgzf zzgzfVar = zzaVar.zzz;
                if (!zzgzfVar.zzc()) {
                    zzaVar.zzz = zzgyx.cg(zzgzfVar);
                }
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    zzaVar.zzz.zzi(((zzd.zza) it.next()).zza());
                }
            }

            public static void e(zza zzaVar) {
                zzaVar.getClass();
                zzaVar.zzz = uo.f20109c;
            }

            public static void f(zza zzaVar, zzq zzqVar) {
                zzaVar.getClass();
                zzaVar.zzF = zzqVar.zza();
                zzaVar.zzu |= 512;
            }

            public static void g(zza zzaVar) {
                zzaVar.zzu &= -9;
                zzaVar.zzy = 0L;
            }

            public static void h(zza zzaVar) {
                zzaVar.zzu &= -1025;
                zzaVar.zzG = 0;
            }

            public static void i(zza zzaVar, zzab zzabVar) {
                zzaVar.getClass();
                zzabVar.getClass();
                zzaVar.zzA = zzabVar;
                zzaVar.zzu |= 16;
            }

            public static void j(zza zzaVar) {
                zzaVar.zzu &= -33;
                zzaVar.zzB = 0;
            }

            public static void k(zza zzaVar, zzq zzqVar) {
                zzaVar.getClass();
                zzaVar.zzw = zzqVar.zza();
                zzaVar.zzu |= 2;
            }

            public static void l(zza zzaVar) {
                zzaVar.zzu &= -2049;
                zzaVar.zzH = 0L;
            }

            public static void m(zza zzaVar, zzd zzdVar) {
                zzaVar.getClass();
                zzaVar.zzG = zzdVar.zza();
                zzaVar.zzu |= 1024;
            }

            public static void n(zza zzaVar) {
                zzaVar.zzu &= -257;
                zzaVar.zzE = 0;
            }

            public static void o(zza zzaVar, zzq zzqVar) {
                zzaVar.getClass();
                zzaVar.zzC = zzqVar.zza();
                zzaVar.zzu |= 64;
            }

            public static void p(zza zzaVar) {
                zzaVar.zzu &= -129;
                zzaVar.zzD = 0;
            }

            public static void q(zza zzaVar, zzab zzabVar) {
                zzaVar.getClass();
                zzabVar.getClass();
                zzab zzabVar2 = zzaVar.zzA;
                if (zzabVar2 != null && zzabVar2 != zzab.zzd()) {
                    zzab.zza zzb2 = zzab.zzb(zzabVar2);
                    zzb2.zzbj(zzabVar);
                    zzabVar = zzb2.zzbs();
                }
                zzaVar.zzA = zzabVar;
                zzaVar.zzu |= 16;
            }

            public static void s(zza zzaVar) {
                zzaVar.zzu &= -65;
                zzaVar.zzC = 0;
            }

            public static void t(int i, zza zzaVar) {
                zzaVar.zzu |= 256;
                zzaVar.zzE = i;
            }

            public static void u(zza zzaVar) {
                zzaVar.zzu &= -5;
                zzaVar.zzx = 0L;
            }

            public static void v(zza zzaVar) {
                zzaVar.zzu &= -513;
                zzaVar.zzF = 0;
            }

            public static void w(zza zzaVar) {
                zzaVar.zzu &= -2;
                zzaVar.zzv = 0L;
            }

            public static void x(zza zzaVar) {
                zzaVar.zzA = null;
                zzaVar.zzu &= -17;
            }

            public static void y(zza zzaVar, long j) {
                zzaVar.zzu |= 8;
                zzaVar.zzy = j;
            }

            public static void z(zza zzaVar) {
                zzaVar.zzu &= -3;
                zzaVar.zzw = 0;
            }

            public static zza zzA(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
                return (zza) zzgyx.bw(zzo, inputStream, zzgyhVar);
            }

            public static zza zzB(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
                return (zza) zzgyx.cf(zzo, byteBuffer, zzgyhVar);
            }

            public static zza zzC(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
                return (zza) zzgyx.bp(zzo, bArr, zzgyhVar);
            }

            public static zzhaq<zza> zzD() {
                return zzo.zzbN();
            }

            public static C0208zza zzn() {
                return (C0208zza) zzo.cl();
            }

            public static C0208zza zzo(zza zzaVar) {
                return (C0208zza) zzo.ci(zzaVar);
            }

            public static zza zzq() {
                return zzo;
            }

            public static zza zzr(InputStream inputStream) throws IOException {
                return (zza) zzgyx.br(zzo, inputStream);
            }

            public static zza zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
                return (zza) zzgyx.bo(zzo, inputStream, zzgyhVar);
            }

            public static zza zzt(zzgxp zzgxpVar) throws zzgzm {
                return (zza) zzgyx.by(zzo, zzgxpVar);
            }

            public static zza zzu(zzgxv zzgxvVar) throws IOException {
                return (zza) zzgyx.ca(zzo, zzgxvVar);
            }

            public static zza zzv(InputStream inputStream) throws IOException {
                return (zza) zzgyx.ch(zzo, inputStream);
            }

            public static zza zzw(ByteBuffer byteBuffer) throws zzgzm {
                return (zza) zzgyx.bx(zzo, byteBuffer);
            }

            public static zza zzx(byte[] bArr) throws zzgzm {
                return (zza) zzgyx.cc(zzo, bArr);
            }

            public static zza zzy(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
                return (zza) zzgyx.bu(zzo, zzgxpVar, zzgyhVar);
            }

            public static zza zzz(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
                return (zza) zzgyx.bv(zzo, zzgxvVar, zzgyhVar);
            }

            @Override // com.google.android.gms.internal.ads.zzgyx
            public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
                zzhaq zzhaqVar;
                switch (zzgywVar.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return new cyk(zzo, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ࠞ\u0006ဉ\u0004\u0007᠌\u0005\b᠌\u0006\t᠌\u0007\nင\b\u000b᠌\t\f᠌\n\rဂ\u000b", new Object[]{"zzu", "zzv", "zzw", zzq.zze(), "zzx", "zzy", "zzz", zzd.zza.zze(), "zzA", "zzB", zzq.zze(), "zzC", zzq.zze(), "zzD", zzq.zze(), "zzE", "zzF", zzq.zze(), "zzG", zzd.zze(), "zzH"});
                    case 3:
                        return new zza();
                    case 4:
                        return new C0208zza(zzo);
                    case 5:
                        return zzo;
                    case 6:
                        zzhaq<zza> zzhaqVar2 = zzp;
                        if (zzhaqVar2 != null) {
                            return zzhaqVar2;
                        }
                        synchronized (zza.class) {
                            try {
                                zzhaqVar = zzp;
                                if (zzhaqVar == null) {
                                    zzhaqVar = new zzgys(zzo);
                                    zzp = zzhaqVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        return zzhaqVar;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public zzd zzR() {
                zzd zzb2 = zzd.zzb(this.zzG);
                return zzb2 == null ? zzd.UNSPECIFIED : zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public List<zzd.zza> zzS() {
                return new zzgzh(this.zzz, zzn);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzT() {
                return (this.zzu & 64) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzU() {
                return (this.zzu & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzV() {
                return (this.zzu & 256) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzW() {
                return (this.zzu & 1024) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzX() {
                return (this.zzu & 16) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzY() {
                return (this.zzu & 512) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzZ() {
                return (this.zzu & 8) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public int zza() {
                return this.zzz.size();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzaa() {
                return (this.zzu & 4) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzab() {
                return (this.zzu & 2) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzac() {
                return (this.zzu & 1) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzad() {
                return (this.zzu & 2048) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public boolean zzae() {
                return (this.zzu & 32) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public int zzb() {
                return this.zzE;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public long zzc() {
                return this.zzy;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public long zzd() {
                return this.zzx;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public long zze() {
                return this.zzv;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public long zzf() {
                return this.zzH;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public zzd.zza zzg(int i) {
                zzd.zza zzb2 = zzd.zza.zzb(this.zzz.zzd(i));
                return zzb2 == null ? zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED : zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public zzq zzh() {
                zzq zzb2 = zzq.zzb(this.zzC);
                return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public zzq zzi() {
                zzq zzb2 = zzq.zzb(this.zzD);
                return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public zzq zzj() {
                zzq zzb2 = zzq.zzb(this.zzF);
                return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public zzq zzk() {
                zzq zzb2 = zzq.zzb(this.zzw);
                return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public zzq zzl() {
                zzq zzb2 = zzq.zzb(this.zzB);
                return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaf.zzb
            public zzab zzm() {
                zzab zzabVar = this.zzA;
                return zzabVar == null ? zzab.zzd() : zzabVar;
            }
        }

        public interface zzb extends zzhaj {
            zzd zzR();

            List<zzd.zza> zzS();

            boolean zzT();

            boolean zzU();

            boolean zzV();

            boolean zzW();

            boolean zzX();

            boolean zzY();

            boolean zzZ();

            int zza();

            boolean zzaa();

            boolean zzab();

            boolean zzac();

            boolean zzad();

            boolean zzae();

            int zzb();

            long zzc();

            long zzd();

            long zze();

            long zzf();

            zzd.zza zzg(int i);

            zzq zzh();

            zzq zzi();

            zzq zzj();

            zzq zzk();

            zzq zzl();

            zzab zzm();
        }

        public final class zzc extends zzgyr<zzaf, zzc> implements zzag {
            public zzc zzA(int i) {
                f();
                zzaf.x((zzaf) this.f8682e, i);
                return this;
            }

            public zzc zzB(long j) {
                f();
                zzaf.v((zzaf) this.f8682e, j);
                return this;
            }

            public zzc zzC(int i, zza.C0208zza c0208zza) {
                f();
                zzaf.o((zzaf) this.f8682e, i, c0208zza.zzbr());
                return this;
            }

            public zzc zzD(int i, zza zzaVar) {
                f();
                zzaf.o((zzaf) this.f8682e, i, zzaVar);
                return this;
            }

            public zzc zzE(int i) {
                f();
                zzaf.i((zzaf) this.f8682e, i);
                return this;
            }

            public zzc zzF(long j) {
                f();
                zzaf.f((zzaf) this.f8682e, j);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public zzgxp zzG() {
                return ((zzaf) this.f8682e).zzG();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public zzgxp zzH() {
                return ((zzaf) this.f8682e).zzH();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public String zzI() {
                return ((zzaf) this.f8682e).zzI();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public String zzJ() {
                return ((zzaf) this.f8682e).zzJ();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public List<zza> zzK() {
                return Collections.unmodifiableList(((zzaf) this.f8682e).zzK());
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public boolean zzL() {
                return ((zzaf) this.f8682e).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public boolean zzM() {
                return ((zzaf) this.f8682e).zzM();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public boolean zzN() {
                return ((zzaf) this.f8682e).zzN();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public boolean zzO() {
                return ((zzaf) this.f8682e).zzO();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public boolean zzP() {
                return ((zzaf) this.f8682e).zzP();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public boolean zzQ() {
                return ((zzaf) this.f8682e).zzQ();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public boolean zzR() {
                return ((zzaf) this.f8682e).zzR();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public int zza() {
                return ((zzaf) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public int zzb() {
                return ((zzaf) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public int zzc() {
                return ((zzaf) this.f8682e).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public int zzd() {
                return ((zzaf) this.f8682e).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public long zze() {
                return ((zzaf) this.f8682e).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public long zzf() {
                return ((zzaf) this.f8682e).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzag
            public zza zzg(int i) {
                return ((zzaf) this.f8682e).zzg(i);
            }

            public zzc zzh(Iterable<? extends zza> iterable) {
                f();
                zzaf.a((zzaf) this.f8682e, iterable);
                return this;
            }

            public zzc zzi(zza.C0208zza c0208zza) {
                f();
                zzaf.w((zzaf) this.f8682e, c0208zza.zzbr());
                return this;
            }

            public zzc zzj(zza zzaVar) {
                f();
                zzaf.w((zzaf) this.f8682e, zzaVar);
                return this;
            }

            public zzc zzk(int i, zza.C0208zza c0208zza) {
                f();
                zzaf.n((zzaf) this.f8682e, i, c0208zza.zzbr());
                return this;
            }

            public zzc zzl(int i, zza zzaVar) {
                f();
                zzaf.n((zzaf) this.f8682e, i, zzaVar);
                return this;
            }

            public zzc zzm() {
                f();
                zzaf.l((zzaf) this.f8682e);
                return this;
            }

            public zzc zzn() {
                f();
                zzaf.b((zzaf) this.f8682e);
                return this;
            }

            public zzc zzo() {
                f();
                zzaf.j((zzaf) this.f8682e);
                return this;
            }

            public zzc zzp() {
                f();
                zzaf.e((zzaf) this.f8682e);
                return this;
            }

            public zzc zzq() {
                f();
                zzaf.s((zzaf) this.f8682e);
                return this;
            }

            public zzc zzr() {
                f();
                zzaf.q((zzaf) this.f8682e);
                return this;
            }

            public zzc zzs() {
                f();
                zzaf.d((zzaf) this.f8682e);
                return this;
            }

            public zzc zzt() {
                f();
                zzaf.p((zzaf) this.f8682e);
                return this;
            }

            public zzc zzu(int i) {
                f();
                zzaf.u((zzaf) this.f8682e, i);
                return this;
            }

            public zzc zzv(String str) {
                f();
                zzaf.r((zzaf) this.f8682e, str);
                return this;
            }

            public zzc zzw(zzgxp zzgxpVar) {
                f();
                zzaf.h((zzaf) this.f8682e, zzgxpVar);
                return this;
            }

            public zzc zzx(int i) {
                f();
                zzaf.g((zzaf) this.f8682e, i);
                return this;
            }

            public zzc zzy(String str) {
                f();
                zzaf.m((zzaf) this.f8682e, str);
                return this;
            }

            public zzc zzz(zzgxp zzgxpVar) {
                f();
                zzaf.k((zzaf) this.f8682e, zzgxpVar);
                return this;
            }
        }

        public enum zzd implements zzgzb {
            UNSPECIFIED(0),
            CONNECTING(1),
            CONNECTED(2),
            DISCONNECTING(3),
            DISCONNECTED(4),
            SUSPENDED(5);


            /* renamed from: a, reason: collision with root package name */
            public static final b f4706a = new b();
            public static final int zzg = 0;
            public static final int zzh = 1;
            public static final int zzi = 2;
            public static final int zzj = 3;
            public static final int zzk = 4;
            public static final int zzl = 5;
            private final int zzo;

            zzd(int i) {
                this.zzo = i;
            }

            public static zzd zzb(int i) {
                if (i == 0) {
                    return UNSPECIFIED;
                }
                if (i == 1) {
                    return CONNECTING;
                }
                if (i == 2) {
                    return CONNECTED;
                }
                if (i == 3) {
                    return DISCONNECTING;
                }
                if (i == 4) {
                    return DISCONNECTED;
                }
                if (i != 5) {
                    return null;
                }
                return SUSPENDED;
            }

            public static zzgzc<zzd> zzd() {
                return f4706a;
            }

            public static zzgzd zze() {
                return ab.f3932a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(zza());
            }

            @Override // com.google.android.gms.internal.ads.zzgzb
            public final int zza() {
                return this.zzo;
            }
        }

        static {
            zzaf zzafVar = new zzaf();
            zzi = zzafVar;
            zzgyx.cb(zzaf.class, zzafVar);
        }

        public static void a(zzaf zzafVar, Iterable iterable) {
            zzafVar.y();
            zzgwy.bi(iterable, zzafVar.zzl);
        }

        public static void b(zzaf zzafVar) {
            zzafVar.zzk &= -65;
            zzafVar.zzw = 0;
        }

        public static void d(zzaf zzafVar) {
            zzafVar.zzk &= -3;
            zzafVar.zzn = 0;
        }

        public static void e(zzaf zzafVar) {
            zzafVar.zzk &= -2;
            zzafVar.zzm = 0;
        }

        public static void f(zzaf zzafVar, long j) {
            zzafVar.zzk |= 4;
            zzafVar.zzo = j;
        }

        public static void g(zzaf zzafVar, int i) {
            zzafVar.zzk |= 64;
            zzafVar.zzw = i;
        }

        public static void h(zzaf zzafVar, zzgxp zzgxpVar) {
            zzafVar.getClass();
            zzafVar.zzp = zzgxpVar.zzx();
            zzafVar.zzk |= 8;
        }

        public static void i(zzaf zzafVar, int i) {
            zzafVar.zzk |= 2;
            zzafVar.zzn = i;
        }

        public static void j(zzaf zzafVar) {
            zzafVar.zzk &= -17;
            zzafVar.zzu = zzl().zzJ();
        }

        public static void k(zzaf zzafVar, zzgxp zzgxpVar) {
            zzafVar.getClass();
            zzafVar.zzu = zzgxpVar.zzx();
            zzafVar.zzk |= 16;
        }

        public static void l(zzaf zzafVar) {
            zzafVar.zzk &= -9;
            zzafVar.zzp = zzl().zzI();
        }

        public static void m(zzaf zzafVar, String str) {
            zzafVar.getClass();
            str.getClass();
            zzafVar.zzk |= 16;
            zzafVar.zzu = str;
        }

        public static void n(zzaf zzafVar, int i, zza zzaVar) {
            zzafVar.getClass();
            zzaVar.getClass();
            zzafVar.y();
            zzafVar.zzl.add(i, zzaVar);
        }

        public static void o(zzaf zzafVar, int i, zza zzaVar) {
            zzafVar.getClass();
            zzaVar.getClass();
            zzafVar.y();
            zzafVar.zzl.set(i, zzaVar);
        }

        public static void p(zzaf zzafVar) {
            zzafVar.zzk &= -5;
            zzafVar.zzo = 0L;
        }

        public static void q(zzaf zzafVar) {
            zzafVar.getClass();
            zzafVar.zzl = ahn.f10232c;
        }

        public static void r(zzaf zzafVar, String str) {
            zzafVar.getClass();
            str.getClass();
            zzafVar.zzk |= 8;
            zzafVar.zzp = str;
        }

        public static void s(zzaf zzafVar) {
            zzafVar.zzk &= -33;
            zzafVar.zzv = 0L;
        }

        public static void u(zzaf zzafVar, int i) {
            zzafVar.y();
            zzafVar.zzl.remove(i);
        }

        public static void v(zzaf zzafVar, long j) {
            zzafVar.zzk |= 32;
            zzafVar.zzv = j;
        }

        public static void w(zzaf zzafVar, zza zzaVar) {
            zzafVar.getClass();
            zzaVar.getClass();
            zzafVar.y();
            zzafVar.zzl.add(zzaVar);
        }

        public static void x(zzaf zzafVar, int i) {
            zzafVar.zzk |= 1;
            zzafVar.zzm = i;
        }

        public static zzc zzi() {
            return (zzc) zzi.cl();
        }

        public static zzc zzj(zzaf zzafVar) {
            return (zzc) zzi.ci(zzafVar);
        }

        public static zzaf zzl() {
            return zzi;
        }

        public static zzaf zzm(InputStream inputStream) throws IOException {
            return (zzaf) zzgyx.br(zzi, inputStream);
        }

        public static zzaf zzn(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzaf) zzgyx.bo(zzi, inputStream, zzgyhVar);
        }

        public static zzaf zzo(zzgxp zzgxpVar) throws zzgzm {
            return (zzaf) zzgyx.by(zzi, zzgxpVar);
        }

        public static zzaf zzp(zzgxv zzgxvVar) throws IOException {
            return (zzaf) zzgyx.ca(zzi, zzgxvVar);
        }

        public static zzaf zzq(InputStream inputStream) throws IOException {
            return (zzaf) zzgyx.ch(zzi, inputStream);
        }

        public static zzaf zzr(ByteBuffer byteBuffer) throws zzgzm {
            return (zzaf) zzgyx.bx(zzi, byteBuffer);
        }

        public static zzaf zzs(byte[] bArr) throws zzgzm {
            return (zzaf) zzgyx.cc(zzi, bArr);
        }

        public static zzaf zzt(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzaf) zzgyx.bu(zzi, zzgxpVar, zzgyhVar);
        }

        public static zzaf zzu(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzaf) zzgyx.bv(zzi, zzgxvVar, zzgyhVar);
        }

        public static zzaf zzv(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzaf) zzgyx.bw(zzi, inputStream, zzgyhVar);
        }

        public static zzaf zzw(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzaf) zzgyx.cf(zzi, byteBuffer, zzgyhVar);
        }

        public static zzaf zzx(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzaf) zzgyx.bp(zzi, bArr, zzgyhVar);
        }

        public static zzhaq<zzaf> zzy() {
            return zzi.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzi, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005\bင\u0006", new Object[]{"zzk", "zzl", zza.class, "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw"});
                case 3:
                    return new zzaf();
                case 4:
                    return new zzc(zzi);
                case 5:
                    return zzi;
                case 6:
                    zzhaq<zzaf> zzhaqVar2 = zzj;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzaf.class) {
                        try {
                            zzhaqVar = zzj;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzi);
                                zzj = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final void y() {
            zzgzj<zza> zzgzjVar = this.zzl;
            if (zzgzjVar.zzc()) {
                return;
            }
            this.zzl = zzgyx.bn(zzgzjVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public zzgxp zzG() {
            return zzgxp.zzw(this.zzp);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public zzgxp zzH() {
            return zzgxp.zzw(this.zzu);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public String zzI() {
            return this.zzp;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public String zzJ() {
            return this.zzu;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public List<zza> zzK() {
            return this.zzl;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public boolean zzL() {
            return (this.zzk & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public boolean zzM() {
            return (this.zzk & 64) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public boolean zzN() {
            return (this.zzk & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public boolean zzO() {
            return (this.zzk & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public boolean zzP() {
            return (this.zzk & 32) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public boolean zzQ() {
            return (this.zzk & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public boolean zzR() {
            return (this.zzk & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public int zza() {
            return this.zzw;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public int zzb() {
            return this.zzm;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public int zzc() {
            return this.zzl.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public int zzd() {
            return this.zzn;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public long zze() {
            return this.zzv;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public long zzf() {
            return this.zzo;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzag
        public zza zzg(int i) {
            return this.zzl.get(i);
        }

        public zzb zzh(int i) {
            return this.zzl.get(i);
        }

        public List<? extends zzb> zzz() {
            return this.zzl;
        }
    }

    public interface zzag extends zzhaj {
        zzgxp zzG();

        zzgxp zzH();

        String zzI();

        String zzJ();

        List<zzaf.zza> zzK();

        boolean zzL();

        boolean zzM();

        boolean zzN();

        boolean zzO();

        boolean zzP();

        boolean zzQ();

        boolean zzR();

        int zza();

        int zzb();

        int zzc();

        int zzd();

        long zze();

        long zzf();

        zzaf.zza zzg(int i);
    }

    public final class zzah extends zzgyx<zzah, zza> implements zzak {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        public static final int zzh = 8;
        public static final int zzi = 9;
        public static final int zzj = 10;
        public static final int zzk = 11;
        private static final zzah zzl;
        private static volatile zzhaq<zzah> zzm;
        private int zzA;
        private int zzB;
        private zzai zzC;
        private int zzn;
        private int zzo = 1000;
        private int zzp = 1000;
        private int zzu;
        private int zzv;
        private int zzw;
        private int zzx;
        private int zzy;
        private int zzz;

        public final class zza extends zzgyr<zzah, zza> implements zzak {
            public zza zzA(int i) {
                f();
                zzah.l((zzah) this.f8682e, i);
                return this;
            }

            public zza zzB(int i) {
                f();
                zzah.y((zzah) this.f8682e, i);
                return this;
            }

            public zza zzC(int i) {
                f();
                zzah.w((zzah) this.f8682e, i);
                return this;
            }

            public zza zzD(zzai.zza zzaVar) {
                f();
                zzah.p((zzah) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzE(zzai zzaiVar) {
                f();
                zzah.p((zzah) this.f8682e, zzaiVar);
                return this;
            }

            public zza zzF(int i) {
                f();
                zzah.j((zzah) this.f8682e, i);
                return this;
            }

            public zza zzG(int i) {
                f();
                zzah.g((zzah) this.f8682e, i);
                return this;
            }

            public zza zzH(int i) {
                f();
                zzah.d((zzah) this.f8682e, i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public zzai zzI() {
                return ((zzah) this.f8682e).zzI();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzJ() {
                return ((zzah) this.f8682e).zzJ();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzK() {
                return ((zzah) this.f8682e).zzK();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzL() {
                return ((zzah) this.f8682e).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzM() {
                return ((zzah) this.f8682e).zzM();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzN() {
                return ((zzah) this.f8682e).zzN();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzO() {
                return ((zzah) this.f8682e).zzO();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzP() {
                return ((zzah) this.f8682e).zzP();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzQ() {
                return ((zzah) this.f8682e).zzQ();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzR() {
                return ((zzah) this.f8682e).zzR();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzS() {
                return ((zzah) this.f8682e).zzS();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public boolean zzT() {
                return ((zzah) this.f8682e).zzT();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public int zza() {
                return ((zzah) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public int zzb() {
                return ((zzah) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public int zzc() {
                return ((zzah) this.f8682e).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public int zzd() {
                return ((zzah) this.f8682e).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public int zze() {
                return ((zzah) this.f8682e).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public int zzf() {
                return ((zzah) this.f8682e).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public int zzg() {
                return ((zzah) this.f8682e).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public int zzh() {
                return ((zzah) this.f8682e).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public zzq zzi() {
                return ((zzah) this.f8682e).zzi();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzak
            public zzq zzj() {
                return ((zzah) this.f8682e).zzj();
            }

            public zza zzk() {
                f();
                zzah.a((zzah) this.f8682e);
                return this;
            }

            public zza zzl() {
                f();
                zzah.x((zzah) this.f8682e);
                return this;
            }

            public zza zzm() {
                f();
                zzah.o((zzah) this.f8682e);
                return this;
            }

            public zza zzn() {
                f();
                zzah.m((zzah) this.f8682e);
                return this;
            }

            public zza zzo() {
                f();
                zzah.b((zzah) this.f8682e);
                return this;
            }

            public zza zzp() {
                f();
                zzah.k((zzah) this.f8682e);
                return this;
            }

            public zza zzq() {
                f();
                zzah.f((zzah) this.f8682e);
                return this;
            }

            public zza zzr() {
                f();
                zzah.t((zzah) this.f8682e);
                return this;
            }

            public zza zzs() {
                f();
                zzah.r((zzah) this.f8682e);
                return this;
            }

            public zza zzt() {
                f();
                zzah.e((zzah) this.f8682e);
                return this;
            }

            public zza zzu() {
                f();
                zzah.q((zzah) this.f8682e);
                return this;
            }

            public zza zzv(zzai zzaiVar) {
                f();
                zzah.v((zzah) this.f8682e, zzaiVar);
                return this;
            }

            public zza zzw(zzq zzqVar) {
                f();
                zzah.s((zzah) this.f8682e, zzqVar);
                return this;
            }

            public zza zzx(zzq zzqVar) {
                f();
                zzah.i((zzah) this.f8682e, zzqVar);
                return this;
            }

            public zza zzy(int i) {
                f();
                zzah.h((zzah) this.f8682e, i);
                return this;
            }

            public zza zzz(int i) {
                f();
                zzah.n((zzah) this.f8682e, i);
                return this;
            }
        }

        static {
            zzah zzahVar = new zzah();
            zzl = zzahVar;
            zzgyx.cb(zzah.class, zzahVar);
        }

        public static void a(zzah zzahVar) {
            zzahVar.zzn &= -3;
            zzahVar.zzp = 1000;
        }

        public static void b(zzah zzahVar) {
            zzahVar.zzn &= -9;
            zzahVar.zzv = 0;
        }

        public static void d(zzah zzahVar, int i) {
            zzahVar.zzn |= 16;
            zzahVar.zzw = i;
        }

        public static void e(zzah zzahVar) {
            zzahVar.zzn &= -33;
            zzahVar.zzx = 0;
        }

        public static void f(zzah zzahVar) {
            zzahVar.zzn &= -257;
            zzahVar.zzA = 0;
        }

        public static void g(zzah zzahVar, int i) {
            zzahVar.zzn |= 32;
            zzahVar.zzx = i;
        }

        public static void h(zzah zzahVar, int i) {
            zzahVar.zzn |= 64;
            zzahVar.zzy = i;
        }

        public static void i(zzah zzahVar, zzq zzqVar) {
            zzahVar.getClass();
            zzahVar.zzo = zzqVar.zza();
            zzahVar.zzn |= 1;
        }

        public static void j(zzah zzahVar, int i) {
            zzahVar.zzn |= 4;
            zzahVar.zzu = i;
        }

        public static void k(zzah zzahVar) {
            zzahVar.zzn &= -513;
            zzahVar.zzB = 0;
        }

        public static void l(zzah zzahVar, int i) {
            zzahVar.zzn |= 8;
            zzahVar.zzv = i;
        }

        public static void m(zzah zzahVar) {
            zzahVar.zzn &= -129;
            zzahVar.zzz = 0;
        }

        public static void n(zzah zzahVar, int i) {
            zzahVar.zzn |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
            zzahVar.zzz = i;
        }

        public static void o(zzah zzahVar) {
            zzahVar.zzn &= -65;
            zzahVar.zzy = 0;
        }

        public static void p(zzah zzahVar, zzai zzaiVar) {
            zzahVar.getClass();
            zzaiVar.getClass();
            zzahVar.zzC = zzaiVar;
            zzahVar.zzn |= 1024;
        }

        public static void q(zzah zzahVar) {
            zzahVar.zzn &= -17;
            zzahVar.zzw = 0;
        }

        public static void r(zzah zzahVar) {
            zzahVar.zzn &= -5;
            zzahVar.zzu = 0;
        }

        public static void s(zzah zzahVar, zzq zzqVar) {
            zzahVar.getClass();
            zzahVar.zzp = zzqVar.zza();
            zzahVar.zzn |= 2;
        }

        public static void t(zzah zzahVar) {
            zzahVar.zzC = null;
            zzahVar.zzn &= -1025;
        }

        public static void v(zzah zzahVar, zzai zzaiVar) {
            zzahVar.getClass();
            zzaiVar.getClass();
            zzai zzaiVar2 = zzahVar.zzC;
            if (zzaiVar2 != null && zzaiVar2 != zzai.zzi()) {
                zzai.zza zzd2 = zzai.zzd(zzaiVar2);
                zzd2.zzbj(zzaiVar);
                zzaiVar = zzd2.zzbs();
            }
            zzahVar.zzC = zzaiVar;
            zzahVar.zzn |= 1024;
        }

        public static void w(zzah zzahVar, int i) {
            zzahVar.zzn |= 256;
            zzahVar.zzA = i;
        }

        public static void x(zzah zzahVar) {
            zzahVar.zzn &= -2;
            zzahVar.zzo = 1000;
        }

        public static void y(zzah zzahVar, int i) {
            zzahVar.zzn |= 512;
            zzahVar.zzB = i;
        }

        public static zzhaq<zzah> zzA() {
            return zzl.zzbN();
        }

        public static zza zzk() {
            return (zza) zzl.cl();
        }

        public static zza zzl(zzah zzahVar) {
            return (zza) zzl.ci(zzahVar);
        }

        public static zzah zzn() {
            return zzl;
        }

        public static zzah zzo(InputStream inputStream) throws IOException {
            return (zzah) zzgyx.br(zzl, inputStream);
        }

        public static zzah zzp(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzah) zzgyx.bo(zzl, inputStream, zzgyhVar);
        }

        public static zzah zzq(zzgxp zzgxpVar) throws zzgzm {
            return (zzah) zzgyx.by(zzl, zzgxpVar);
        }

        public static zzah zzr(zzgxv zzgxvVar) throws IOException {
            return (zzah) zzgyx.ca(zzl, zzgxvVar);
        }

        public static zzah zzs(InputStream inputStream) throws IOException {
            return (zzah) zzgyx.ch(zzl, inputStream);
        }

        public static zzah zzt(ByteBuffer byteBuffer) throws zzgzm {
            return (zzah) zzgyx.bx(zzl, byteBuffer);
        }

        public static zzah zzu(byte[] bArr) throws zzgzm {
            return (zzah) zzgyx.cc(zzl, bArr);
        }

        public static zzah zzv(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzah) zzgyx.bu(zzl, zzgxpVar, zzgyhVar);
        }

        public static zzah zzw(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzah) zzgyx.bv(zzl, zzgxvVar, zzgyhVar);
        }

        public static zzah zzx(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzah) zzgyx.bw(zzl, inputStream, zzgyhVar);
        }

        public static zzah zzy(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzah) zzgyx.cf(zzl, byteBuffer, zzgyhVar);
        }

        public static zzah zzz(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzah) zzgyx.bp(zzl, bArr, zzgyhVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzl, "\u0004\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zzn", "zzo", zzq.zze(), "zzp", zzq.zze(), "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC"});
                case 3:
                    return new zzah();
                case 4:
                    return new zza(zzl);
                case 5:
                    return zzl;
                case 6:
                    zzhaq<zzah> zzhaqVar2 = zzm;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzah.class) {
                        try {
                            zzhaqVar = zzm;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzl);
                                zzm = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public zzai zzI() {
            zzai zzaiVar = this.zzC;
            return zzaiVar == null ? zzai.zzi() : zzaiVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzJ() {
            return (this.zzn & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzK() {
            return (this.zzn & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzL() {
            return (this.zzn & 64) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzM() {
            return (this.zzn & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzN() {
            return (this.zzn & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzO() {
            return (this.zzn & 512) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzP() {
            return (this.zzn & 256) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzQ() {
            return (this.zzn & 1024) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzR() {
            return (this.zzn & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzS() {
            return (this.zzn & 32) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public boolean zzT() {
            return (this.zzn & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public int zza() {
            return this.zzy;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public int zzb() {
            return this.zzz;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public int zzc() {
            return this.zzv;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public int zzd() {
            return this.zzB;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public int zze() {
            return this.zzA;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public int zzf() {
            return this.zzu;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public int zzg() {
            return this.zzx;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public int zzh() {
            return this.zzw;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public zzq zzi() {
            zzq zzb2 = zzq.zzb(this.zzp);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzak
        public zzq zzj() {
            zzq zzb2 = zzq.zzb(this.zzo);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }
    }

    public final class zzai extends zzgyx<zzai, zza> implements zzaj {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzai zzc;
        private static volatile zzhaq<zzai> zzd;
        private int zze;
        private int zzf;
        private int zzg;

        public final class zza extends zzgyr<zzai, zza> implements zzaj {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzaj
            public int zza() {
                return ((zzai) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaj
            public int zzb() {
                return ((zzai) this.f8682e).zzb();
            }

            public zza zzc() {
                f();
                zzai.f((zzai) this.f8682e);
                return this;
            }

            public zza zzd() {
                f();
                zzai.e((zzai) this.f8682e);
                return this;
            }

            public zza zze(int i) {
                f();
                zzai.d((zzai) this.f8682e, i);
                return this;
            }

            public zza zzf(int i) {
                f();
                zzai.b((zzai) this.f8682e, i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaj
            public boolean zzg() {
                return ((zzai) this.f8682e).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaj
            public boolean zzh() {
                return ((zzai) this.f8682e).zzh();
            }
        }

        static {
            zzai zzaiVar = new zzai();
            zzc = zzaiVar;
            zzgyx.cb(zzai.class, zzaiVar);
        }

        public static void b(zzai zzaiVar, int i) {
            zzaiVar.zze |= 2;
            zzaiVar.zzg = i;
        }

        public static void d(zzai zzaiVar, int i) {
            zzaiVar.zze |= 1;
            zzaiVar.zzf = i;
        }

        public static void e(zzai zzaiVar) {
            zzaiVar.zze &= -3;
            zzaiVar.zzg = 0;
        }

        public static void f(zzai zzaiVar) {
            zzaiVar.zze &= -2;
            zzaiVar.zzf = 0;
        }

        public static zza zzc() {
            return (zza) zzc.cl();
        }

        public static zza zzd(zzai zzaiVar) {
            return (zza) zzc.ci(zzaiVar);
        }

        public static zzai zzi() {
            return zzc;
        }

        public static zzai zzj(InputStream inputStream) throws IOException {
            return (zzai) zzgyx.br(zzc, inputStream);
        }

        public static zzai zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzai) zzgyx.bo(zzc, inputStream, zzgyhVar);
        }

        public static zzai zzl(zzgxp zzgxpVar) throws zzgzm {
            return (zzai) zzgyx.by(zzc, zzgxpVar);
        }

        public static zzai zzm(zzgxv zzgxvVar) throws IOException {
            return (zzai) zzgyx.ca(zzc, zzgxvVar);
        }

        public static zzai zzn(InputStream inputStream) throws IOException {
            return (zzai) zzgyx.ch(zzc, inputStream);
        }

        public static zzai zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzai) zzgyx.bx(zzc, byteBuffer);
        }

        public static zzai zzp(byte[] bArr) throws zzgzm {
            return (zzai) zzgyx.cc(zzc, bArr);
        }

        public static zzai zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzai) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
        }

        public static zzai zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzai) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
        }

        public static zzai zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzai) zzgyx.bw(zzc, inputStream, zzgyhVar);
        }

        public static zzai zzt(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzai) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
        }

        public static zzai zzu(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzai) zzgyx.bp(zzc, bArr, zzgyhVar);
        }

        public static zzhaq<zzai> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
                case 3:
                    return new zzai();
                case 4:
                    return new zza(zzc);
                case 5:
                    return zzc;
                case 6:
                    zzhaq<zzai> zzhaqVar2 = zzd;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzai.class) {
                        try {
                            zzhaqVar = zzd;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzc);
                                zzd = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaj
        public int zza() {
            return this.zzf;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaj
        public int zzb() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaj
        public boolean zzg() {
            return (this.zze & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaj
        public boolean zzh() {
            return (this.zze & 2) != 0;
        }
    }

    public interface zzaj extends zzhaj {
        int zza();

        int zzb();

        boolean zzg();

        boolean zzh();
    }

    public interface zzak extends zzhaj {
        zzai zzI();

        boolean zzJ();

        boolean zzK();

        boolean zzL();

        boolean zzM();

        boolean zzN();

        boolean zzO();

        boolean zzP();

        boolean zzQ();

        boolean zzR();

        boolean zzS();

        boolean zzT();

        int zza();

        int zzb();

        int zzc();

        int zzd();

        int zze();

        int zzf();

        int zzg();

        int zzh();

        zzq zzi();

        zzq zzj();
    }

    public final class zzal extends zzgyx<zzal, zza> implements zzam {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzal zzc;
        private static volatile zzhaq<zzal> zzd;
        private int zze;
        private int zzf;
        private int zzg;

        public final class zza extends zzgyr<zzal, zza> implements zzam {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzam
            public int zza() {
                return ((zzal) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzam
            public int zzb() {
                return ((zzal) this.f8682e).zzb();
            }

            public zza zzc() {
                f();
                zzal.f((zzal) this.f8682e);
                return this;
            }

            public zza zzd() {
                f();
                zzal.e((zzal) this.f8682e);
                return this;
            }

            public zza zze(int i) {
                f();
                zzal.d((zzal) this.f8682e, i);
                return this;
            }

            public zza zzf(int i) {
                f();
                zzal.b((zzal) this.f8682e, i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzam
            public boolean zzg() {
                return ((zzal) this.f8682e).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzam
            public boolean zzh() {
                return ((zzal) this.f8682e).zzh();
            }
        }

        static {
            zzal zzalVar = new zzal();
            zzc = zzalVar;
            zzgyx.cb(zzal.class, zzalVar);
        }

        public static void b(zzal zzalVar, int i) {
            zzalVar.zze |= 1;
            zzalVar.zzf = i;
        }

        public static void d(zzal zzalVar, int i) {
            zzalVar.zze |= 2;
            zzalVar.zzg = i;
        }

        public static void e(zzal zzalVar) {
            zzalVar.zze &= -2;
            zzalVar.zzf = 0;
        }

        public static void f(zzal zzalVar) {
            zzalVar.zze &= -3;
            zzalVar.zzg = 0;
        }

        public static zza zzc() {
            return (zza) zzc.cl();
        }

        public static zza zzd(zzal zzalVar) {
            return (zza) zzc.ci(zzalVar);
        }

        public static zzal zzi() {
            return zzc;
        }

        public static zzal zzj(InputStream inputStream) throws IOException {
            return (zzal) zzgyx.br(zzc, inputStream);
        }

        public static zzal zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzal) zzgyx.bo(zzc, inputStream, zzgyhVar);
        }

        public static zzal zzl(zzgxp zzgxpVar) throws zzgzm {
            return (zzal) zzgyx.by(zzc, zzgxpVar);
        }

        public static zzal zzm(zzgxv zzgxvVar) throws IOException {
            return (zzal) zzgyx.ca(zzc, zzgxvVar);
        }

        public static zzal zzn(InputStream inputStream) throws IOException {
            return (zzal) zzgyx.ch(zzc, inputStream);
        }

        public static zzal zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzal) zzgyx.bx(zzc, byteBuffer);
        }

        public static zzal zzp(byte[] bArr) throws zzgzm {
            return (zzal) zzgyx.cc(zzc, bArr);
        }

        public static zzal zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzal) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
        }

        public static zzal zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzal) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
        }

        public static zzal zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzal) zzgyx.bw(zzc, inputStream, zzgyhVar);
        }

        public static zzal zzt(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzal) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
        }

        public static zzal zzu(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzal) zzgyx.bp(zzc, bArr, zzgyhVar);
        }

        public static zzhaq<zzal> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
                case 3:
                    return new zzal();
                case 4:
                    return new zza(zzc);
                case 5:
                    return zzc;
                case 6:
                    zzhaq<zzal> zzhaqVar2 = zzd;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzal.class) {
                        try {
                            zzhaqVar = zzd;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzc);
                                zzd = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzam
        public int zza() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzam
        public int zzb() {
            return this.zzf;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzam
        public boolean zzg() {
            return (this.zze & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzam
        public boolean zzh() {
            return (this.zze & 1) != 0;
        }
    }

    public interface zzam extends zzhaj {
        int zza();

        int zzb();

        boolean zzg();

        boolean zzh();
    }

    public final class zzan extends zzgyx<zzan, zza> implements zzao {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzan zzd;
        private static volatile zzhaq<zzan> zze;
        private int zzf;
        private String zzg = "";
        private int zzh;
        private zzap zzi;

        public final class zza extends zzgyr<zzan, zza> implements zzao {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzao
            public zzq zza() {
                return ((zzan) this.f8682e).zza();
            }

            public zza zzb() {
                f();
                zzan.h((zzan) this.f8682e);
                return this;
            }

            public zza zzc() {
                f();
                zzan.a((zzan) this.f8682e);
                return this;
            }

            public zza zzd() {
                f();
                zzan.j((zzan) this.f8682e);
                return this;
            }

            public zza zze(zzap zzapVar) {
                f();
                zzan.g((zzan) this.f8682e, zzapVar);
                return this;
            }

            public zza zzf(String str) {
                f();
                zzan.f((zzan) this.f8682e, str);
                return this;
            }

            public zza zzg(zzgxp zzgxpVar) {
                f();
                zzan.b((zzan) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzh(zzap.zza zzaVar) {
                f();
                zzan.e((zzan) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzi(zzap zzapVar) {
                f();
                zzan.e((zzan) this.f8682e, zzapVar);
                return this;
            }

            public zza zzj(zzq zzqVar) {
                f();
                zzan.d((zzan) this.f8682e, zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzao
            public zzap zzk() {
                return ((zzan) this.f8682e).zzk();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzao
            public zzgxp zzl() {
                return ((zzan) this.f8682e).zzl();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzao
            public String zzm() {
                return ((zzan) this.f8682e).zzm();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzao
            public boolean zzn() {
                return ((zzan) this.f8682e).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzao
            public boolean zzo() {
                return ((zzan) this.f8682e).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzao
            public boolean zzp() {
                return ((zzan) this.f8682e).zzp();
            }
        }

        static {
            zzan zzanVar = new zzan();
            zzd = zzanVar;
            zzgyx.cb(zzan.class, zzanVar);
        }

        public static void a(zzan zzanVar) {
            zzanVar.zzi = null;
            zzanVar.zzf &= -5;
        }

        public static void b(zzan zzanVar, zzgxp zzgxpVar) {
            zzanVar.getClass();
            zzanVar.zzg = zzgxpVar.zzx();
            zzanVar.zzf |= 1;
        }

        public static void d(zzan zzanVar, zzq zzqVar) {
            zzanVar.getClass();
            zzanVar.zzh = zzqVar.zza();
            zzanVar.zzf |= 2;
        }

        public static void e(zzan zzanVar, zzap zzapVar) {
            zzanVar.getClass();
            zzapVar.getClass();
            zzanVar.zzi = zzapVar;
            zzanVar.zzf |= 4;
        }

        public static void f(zzan zzanVar, String str) {
            zzanVar.getClass();
            str.getClass();
            zzanVar.zzf |= 1;
            zzanVar.zzg = str;
        }

        public static void g(zzan zzanVar, zzap zzapVar) {
            zzanVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzanVar.zzi;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzanVar.zzi = zzapVar;
            zzanVar.zzf |= 4;
        }

        public static void h(zzan zzanVar) {
            zzanVar.zzf &= -2;
            zzanVar.zzg = zzf().zzm();
        }

        public static void j(zzan zzanVar) {
            zzanVar.zzf &= -3;
            zzanVar.zzh = 0;
        }

        public static zza zzb() {
            return (zza) zzd.cl();
        }

        public static zza zzc(zzan zzanVar) {
            return (zza) zzd.ci(zzanVar);
        }

        public static zzan zzf() {
            return zzd;
        }

        public static zzan zzg(InputStream inputStream) throws IOException {
            return (zzan) zzgyx.br(zzd, inputStream);
        }

        public static zzan zzh(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzan) zzgyx.bo(zzd, inputStream, zzgyhVar);
        }

        public static zzan zzi(zzgxp zzgxpVar) throws zzgzm {
            return (zzan) zzgyx.by(zzd, zzgxpVar);
        }

        public static zzan zzj(zzgxv zzgxvVar) throws IOException {
            return (zzan) zzgyx.ca(zzd, zzgxvVar);
        }

        public static zzan zzq(InputStream inputStream) throws IOException {
            return (zzan) zzgyx.ch(zzd, inputStream);
        }

        public static zzan zzr(ByteBuffer byteBuffer) throws zzgzm {
            return (zzan) zzgyx.bx(zzd, byteBuffer);
        }

        public static zzan zzs(byte[] bArr) throws zzgzm {
            return (zzan) zzgyx.cc(zzd, bArr);
        }

        public static zzan zzt(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzan) zzgyx.bu(zzd, zzgxpVar, zzgyhVar);
        }

        public static zzan zzu(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzan) zzgyx.bv(zzd, zzgxvVar, zzgyhVar);
        }

        public static zzan zzv(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzan) zzgyx.bw(zzd, inputStream, zzgyhVar);
        }

        public static zzan zzw(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzan) zzgyx.cf(zzd, byteBuffer, zzgyhVar);
        }

        public static zzan zzx(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzan) zzgyx.bp(zzd, bArr, zzgyhVar);
        }

        public static zzhaq<zzan> zzy() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", "zzh", zzq.zze(), "zzi"});
                case 3:
                    return new zzan();
                case 4:
                    return new zza(zzd);
                case 5:
                    return zzd;
                case 6:
                    zzhaq<zzan> zzhaqVar2 = zze;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzan.class) {
                        try {
                            zzhaqVar = zze;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzd);
                                zze = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzao
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzh);
            return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzao
        public zzap zzk() {
            zzap zzapVar = this.zzi;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzao
        public zzgxp zzl() {
            return zzgxp.zzw(this.zzg);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzao
        public String zzm() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzao
        public boolean zzn() {
            return (this.zzf & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzao
        public boolean zzo() {
            return (this.zzf & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzao
        public boolean zzp() {
            return (this.zzf & 2) != 0;
        }
    }

    public interface zzao extends zzhaj {
        zzq zza();

        zzap zzk();

        zzgxp zzl();

        String zzm();

        boolean zzn();

        boolean zzo();

        boolean zzp();
    }

    public final class zzap extends zzgyx<zzap, zza> implements zzaq {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzap zzc;
        private static volatile zzhaq<zzap> zzd;
        private int zze;
        private int zzf;
        private int zzg;

        public final class zza extends zzgyr<zzap, zza> implements zzaq {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzaq
            public int zza() {
                return ((zzap) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaq
            public int zzb() {
                return ((zzap) this.f8682e).zzb();
            }

            public zza zzc() {
                f();
                zzap.f((zzap) this.f8682e);
                return this;
            }

            public zza zzd() {
                f();
                zzap.e((zzap) this.f8682e);
                return this;
            }

            public zza zze(int i) {
                f();
                zzap.d(i, (zzap) this.f8682e);
                return this;
            }

            public zza zzf(int i) {
                f();
                zzap.b(i, (zzap) this.f8682e);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaq
            public boolean zzg() {
                return ((zzap) this.f8682e).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaq
            public boolean zzh() {
                return ((zzap) this.f8682e).zzh();
            }
        }

        static {
            zzap zzapVar = new zzap();
            zzc = zzapVar;
            zzgyx.cb(zzap.class, zzapVar);
        }

        public static void b(int i, zzap zzapVar) {
            zzapVar.zze |= 1;
            zzapVar.zzf = i;
        }

        public static void d(int i, zzap zzapVar) {
            zzapVar.zze |= 2;
            zzapVar.zzg = i;
        }

        public static void e(zzap zzapVar) {
            zzapVar.zze &= -2;
            zzapVar.zzf = 0;
        }

        public static void f(zzap zzapVar) {
            zzapVar.zze &= -3;
            zzapVar.zzg = 0;
        }

        public static zza zzc() {
            return (zza) zzc.cl();
        }

        public static zza zzd(zzap zzapVar) {
            return (zza) zzc.ci(zzapVar);
        }

        public static zzap zzi() {
            return zzc;
        }

        public static zzap zzj(InputStream inputStream) throws IOException {
            return (zzap) zzgyx.br(zzc, inputStream);
        }

        public static zzap zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzap) zzgyx.bo(zzc, inputStream, zzgyhVar);
        }

        public static zzap zzl(zzgxp zzgxpVar) throws zzgzm {
            return (zzap) zzgyx.by(zzc, zzgxpVar);
        }

        public static zzap zzm(zzgxv zzgxvVar) throws IOException {
            return (zzap) zzgyx.ca(zzc, zzgxvVar);
        }

        public static zzap zzn(InputStream inputStream) throws IOException {
            return (zzap) zzgyx.ch(zzc, inputStream);
        }

        public static zzap zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzap) zzgyx.bx(zzc, byteBuffer);
        }

        public static zzap zzp(byte[] bArr) throws zzgzm {
            return (zzap) zzgyx.cc(zzc, bArr);
        }

        public static zzap zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzap) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
        }

        public static zzap zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzap) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
        }

        public static zzap zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzap) zzgyx.bw(zzc, inputStream, zzgyhVar);
        }

        public static zzap zzt(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzap) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
        }

        public static zzap zzu(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzap) zzgyx.bp(zzc, bArr, zzgyhVar);
        }

        public static zzhaq<zzap> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
                case 3:
                    return new zzap();
                case 4:
                    return new zza(zzc);
                case 5:
                    return zzc;
                case 6:
                    zzhaq<zzap> zzhaqVar2 = zzd;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzap.class) {
                        try {
                            zzhaqVar = zzd;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzc);
                                zzd = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaq
        public int zza() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaq
        public int zzb() {
            return this.zzf;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaq
        public boolean zzg() {
            return (this.zze & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaq
        public boolean zzh() {
            return (this.zze & 1) != 0;
        }
    }

    public interface zzaq extends zzhaj {
        int zza();

        int zzb();

        boolean zzg();

        boolean zzh();
    }

    public final class zzar extends zzgyx<zzar, zza> implements zzas {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzar zzd;
        private static volatile zzhaq<zzar> zze;
        private int zzf;
        private int zzg;
        private int zzh;
        private int zzi;

        public final class zza extends zzgyr<zzar, zza> implements zzas {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzas
            public int zza() {
                return ((zzar) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzas
            public int zzb() {
                return ((zzar) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzas
            public int zzc() {
                return ((zzar) this.f8682e).zzc();
            }

            public zza zzd() {
                f();
                zzar.e((zzar) this.f8682e);
                return this;
            }

            public zza zze() {
                f();
                zzar.d((zzar) this.f8682e);
                return this;
            }

            public zza zzf() {
                f();
                zzar.a((zzar) this.f8682e);
                return this;
            }

            public zza zzg(int i) {
                f();
                zzar.h((zzar) this.f8682e, i);
                return this;
            }

            public zza zzh(int i) {
                f();
                zzar.g((zzar) this.f8682e, i);
                return this;
            }

            public zza zzi(int i) {
                f();
                zzar.f((zzar) this.f8682e, i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzas
            public boolean zzj() {
                return ((zzar) this.f8682e).zzj();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzas
            public boolean zzk() {
                return ((zzar) this.f8682e).zzk();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzas
            public boolean zzl() {
                return ((zzar) this.f8682e).zzl();
            }
        }

        static {
            zzar zzarVar = new zzar();
            zzd = zzarVar;
            zzgyx.cb(zzar.class, zzarVar);
        }

        public static void a(zzar zzarVar) {
            zzarVar.zzf &= -3;
            zzarVar.zzh = 0;
        }

        public static void d(zzar zzarVar) {
            zzarVar.zzf &= -5;
            zzarVar.zzi = 0;
        }

        public static void e(zzar zzarVar) {
            zzarVar.zzf &= -2;
            zzarVar.zzg = 0;
        }

        public static void f(zzar zzarVar, int i) {
            zzarVar.zzf |= 2;
            zzarVar.zzh = i;
        }

        public static void g(zzar zzarVar, int i) {
            zzarVar.zzf |= 4;
            zzarVar.zzi = i;
        }

        public static void h(zzar zzarVar, int i) {
            zzarVar.zzf |= 1;
            zzarVar.zzg = i;
        }

        public static zza zzd() {
            return (zza) zzd.cl();
        }

        public static zza zzf(zzar zzarVar) {
            return (zza) zzd.ci(zzarVar);
        }

        public static zzar zzh() {
            return zzd;
        }

        public static zzar zzi(InputStream inputStream) throws IOException {
            return (zzar) zzgyx.br(zzd, inputStream);
        }

        public static zzar zzm(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzar) zzgyx.bo(zzd, inputStream, zzgyhVar);
        }

        public static zzar zzn(zzgxp zzgxpVar) throws zzgzm {
            return (zzar) zzgyx.by(zzd, zzgxpVar);
        }

        public static zzar zzo(zzgxv zzgxvVar) throws IOException {
            return (zzar) zzgyx.ca(zzd, zzgxvVar);
        }

        public static zzar zzp(InputStream inputStream) throws IOException {
            return (zzar) zzgyx.ch(zzd, inputStream);
        }

        public static zzar zzq(ByteBuffer byteBuffer) throws zzgzm {
            return (zzar) zzgyx.bx(zzd, byteBuffer);
        }

        public static zzar zzr(byte[] bArr) throws zzgzm {
            return (zzar) zzgyx.cc(zzd, bArr);
        }

        public static zzar zzs(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzar) zzgyx.bu(zzd, zzgxpVar, zzgyhVar);
        }

        public static zzar zzt(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzar) zzgyx.bv(zzd, zzgxvVar, zzgyhVar);
        }

        public static zzar zzu(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzar) zzgyx.bw(zzd, inputStream, zzgyhVar);
        }

        public static zzar zzv(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzar) zzgyx.cf(zzd, byteBuffer, zzgyhVar);
        }

        public static zzar zzw(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzar) zzgyx.bp(zzd, bArr, zzgyhVar);
        }

        public static zzhaq<zzar> zzx() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
                case 3:
                    return new zzar();
                case 4:
                    return new zza(zzd);
                case 5:
                    return zzd;
                case 6:
                    zzhaq<zzar> zzhaqVar2 = zze;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzar.class) {
                        try {
                            zzhaqVar = zze;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzd);
                                zze = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzas
        public int zza() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzas
        public int zzb() {
            return this.zzi;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzas
        public int zzc() {
            return this.zzh;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzas
        public boolean zzj() {
            return (this.zzf & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzas
        public boolean zzk() {
            return (this.zzf & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzas
        public boolean zzl() {
            return (this.zzf & 2) != 0;
        }
    }

    public interface zzas extends zzhaj {
        int zza();

        int zzb();

        int zzc();

        boolean zzj();

        boolean zzk();

        boolean zzl();
    }

    public final class zzat extends zzgyx<zzat, zza> implements zzbi {
        public static final int zza = 5;
        public static final int zzb = 6;
        public static final int zzc = 7;
        public static final int zzd = 8;
        public static final int zze = 9;
        public static final int zzf = 10;
        public static final int zzg = 11;
        public static final int zzh = 12;
        public static final int zzi = 13;
        public static final int zzj = 14;
        public static final int zzk = 15;
        public static final int zzl = 16;
        public static final int zzm = 17;
        public static final int zzn = 18;
        public static final int zzo = 19;
        public static final int zzp = 20;
        private static final zzat zzu;
        private static volatile zzhaq<zzat> zzv;
        private zzbj zzA;
        private zzau zzB;
        private zzbc zzC;
        private zzay zzD;
        private int zzE;
        private int zzF;
        private zzap zzG;
        private int zzH;
        private int zzI;
        private int zzJ;
        private int zzK;
        private int zzL;
        private long zzM;
        private int zzw;
        private zzba zzx;
        private zzbe zzy;
        private zzbg zzz;

        public final class zza extends zzgyr<zzat, zza> implements zzbi {
            public zza zzA(zzay zzayVar) {
                f();
                zzat.ao((zzat) this.f8682e, zzayVar);
                return this;
            }

            public zza zzB(zzba zzbaVar) {
                f();
                zzat.al((zzat) this.f8682e, zzbaVar);
                return this;
            }

            public zza zzC(zzbc zzbcVar) {
                f();
                zzat.x((zzat) this.f8682e, zzbcVar);
                return this;
            }

            public zza zzD(zzbe zzbeVar) {
                f();
                zzat.p((zzat) this.f8682e, zzbeVar);
                return this;
            }

            public zza zzE(zzbg zzbgVar) {
                f();
                zzat.l((zzat) this.f8682e, zzbgVar);
                return this;
            }

            public zza zzF(zzap zzapVar) {
                f();
                zzat.h((zzat) this.f8682e, zzapVar);
                return this;
            }

            public zza zzG(zzbj zzbjVar) {
                f();
                zzat.ae((zzat) this.f8682e, zzbjVar);
                return this;
            }

            public zza zzH(zzau.zza zzaVar) {
                f();
                zzat.ai((zzat) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzI(zzau zzauVar) {
                f();
                zzat.ai((zzat) this.f8682e, zzauVar);
                return this;
            }

            public zza zzJ(zzay.zza zzaVar) {
                f();
                zzat.n((zzat) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzK(zzay zzayVar) {
                f();
                zzat.n((zzat) this.f8682e, zzayVar);
                return this;
            }

            public zza zzL(zzba.zza zzaVar) {
                f();
                zzat.ak((zzat) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzM(zzba zzbaVar) {
                f();
                zzat.ak((zzat) this.f8682e, zzbaVar);
                return this;
            }

            public zza zzN(zzbc.zza zzaVar) {
                f();
                zzat.a((zzat) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzO(zzbc zzbcVar) {
                f();
                zzat.a((zzat) this.f8682e, zzbcVar);
                return this;
            }

            public zza zzP(zzbe.zza zzaVar) {
                f();
                zzat.af((zzat) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzQ(zzbe zzbeVar) {
                f();
                zzat.af((zzat) this.f8682e, zzbeVar);
                return this;
            }

            public zza zzR(zzbg.zza zzaVar) {
                f();
                zzat.t((zzat) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzS(zzbg zzbgVar) {
                f();
                zzat.t((zzat) this.f8682e, zzbgVar);
                return this;
            }

            public zza zzT(int i) {
                f();
                zzat.an(i, (zzat) this.f8682e);
                return this;
            }

            public zza zzU(int i) {
                f();
                zzat.d(i, (zzat) this.f8682e);
                return this;
            }

            public zza zzV(int i) {
                f();
                zzat.b(i, (zzat) this.f8682e);
                return this;
            }

            public zza zzW(int i) {
                f();
                zzat.ah(i, (zzat) this.f8682e);
                return this;
            }

            public zza zzX(int i) {
                f();
                zzat.v(i, (zzat) this.f8682e);
                return this;
            }

            public zza zzY(int i) {
                f();
                zzat.aj(i, (zzat) this.f8682e);
                return this;
            }

            public zza zzZ(int i) {
                f();
                zzat.g(i, (zzat) this.f8682e);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public int zza() {
                return ((zzat) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzaA() {
                return ((zzat) this.f8682e).zzaA();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzaB() {
                return ((zzat) this.f8682e).zzaB();
            }

            public zza zzaa(zzap.zza zzaVar) {
                f();
                zzat.aa((zzat) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzab(zzap zzapVar) {
                f();
                zzat.aa((zzat) this.f8682e, zzapVar);
                return this;
            }

            public zza zzac(long j) {
                f();
                zzat.k((zzat) this.f8682e, j);
                return this;
            }

            public zza zzad(zzbj.zza zzaVar) {
                f();
                zzat.ac((zzat) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzae(zzbj zzbjVar) {
                f();
                zzat.ac((zzat) this.f8682e, zzbjVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public zzau zzaf() {
                return ((zzat) this.f8682e).zzaf();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public zzay zzag() {
                return ((zzat) this.f8682e).zzag();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public zzba zzah() {
                return ((zzat) this.f8682e).zzah();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public zzbc zzai() {
                return ((zzat) this.f8682e).zzai();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public zzbe zzaj() {
                return ((zzat) this.f8682e).zzaj();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public zzbg zzak() {
                return ((zzat) this.f8682e).zzak();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public zzbj zzal() {
                return ((zzat) this.f8682e).zzal();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzam() {
                return ((zzat) this.f8682e).zzam();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzan() {
                return ((zzat) this.f8682e).zzan();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzao() {
                return ((zzat) this.f8682e).zzao();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzap() {
                return ((zzat) this.f8682e).zzap();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzaq() {
                return ((zzat) this.f8682e).zzaq();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzar() {
                return ((zzat) this.f8682e).zzar();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzas() {
                return ((zzat) this.f8682e).zzas();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzat() {
                return ((zzat) this.f8682e).zzat();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzau() {
                return ((zzat) this.f8682e).zzau();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzav() {
                return ((zzat) this.f8682e).zzav();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzaw() {
                return ((zzat) this.f8682e).zzaw();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzax() {
                return ((zzat) this.f8682e).zzax();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzay() {
                return ((zzat) this.f8682e).zzay();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public boolean zzaz() {
                return ((zzat) this.f8682e).zzaz();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public int zzb() {
                return ((zzat) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public int zzc() {
                return ((zzat) this.f8682e).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public int zzd() {
                return ((zzat) this.f8682e).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public int zze() {
                return ((zzat) this.f8682e).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public int zzf() {
                return ((zzat) this.f8682e).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public int zzg() {
                return ((zzat) this.f8682e).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public long zzh() {
                return ((zzat) this.f8682e).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
            public zzap zzi() {
                return ((zzat) this.f8682e).zzi();
            }

            public zza zzj() {
                f();
                zzat.e((zzat) this.f8682e);
                return this;
            }

            public zza zzk() {
                f();
                zzat.am((zzat) this.f8682e);
                return this;
            }

            public zza zzl() {
                f();
                zzat.w((zzat) this.f8682e);
                return this;
            }

            public zza zzm() {
                f();
                zzat.s((zzat) this.f8682e);
                return this;
            }

            public zza zzn() {
                f();
                zzat.f((zzat) this.f8682e);
                return this;
            }

            public zza zzo() {
                f();
                zzat.q((zzat) this.f8682e);
                return this;
            }

            public zza zzp() {
                f();
                zzat.j((zzat) this.f8682e);
                return this;
            }

            public zza zzq() {
                f();
                zzat.ad((zzat) this.f8682e);
                return this;
            }

            public zza zzr() {
                f();
                zzat.z((zzat) this.f8682e);
                return this;
            }

            public zza zzs() {
                f();
                zzat.i((zzat) this.f8682e);
                return this;
            }

            public zza zzt() {
                f();
                zzat.y((zzat) this.f8682e);
                return this;
            }

            public zza zzu() {
                f();
                zzat.ag((zzat) this.f8682e);
                return this;
            }

            public zza zzv() {
                f();
                zzat.ab((zzat) this.f8682e);
                return this;
            }

            public zza zzw() {
                f();
                zzat.o((zzat) this.f8682e);
                return this;
            }

            public zza zzx() {
                f();
                zzat.m((zzat) this.f8682e);
                return this;
            }

            public zza zzy() {
                f();
                zzat.u((zzat) this.f8682e);
                return this;
            }

            public zza zzz(zzau zzauVar) {
                f();
                zzat.r((zzat) this.f8682e, zzauVar);
                return this;
            }
        }

        static {
            zzat zzatVar = new zzat();
            zzu = zzatVar;
            zzgyx.cb(zzat.class, zzatVar);
        }

        public static void a(zzat zzatVar, zzbc zzbcVar) {
            zzatVar.getClass();
            zzbcVar.getClass();
            zzatVar.zzC = zzbcVar;
            zzatVar.zzw |= 32;
        }

        public static void aa(zzat zzatVar, zzap zzapVar) {
            zzatVar.getClass();
            zzapVar.getClass();
            zzatVar.zzG = zzapVar;
            zzatVar.zzw |= 512;
        }

        public static void ab(zzat zzatVar) {
            zzatVar.zzw &= -4097;
            zzatVar.zzJ = 0;
        }

        public static void ac(zzat zzatVar, zzbj zzbjVar) {
            zzatVar.getClass();
            zzbjVar.getClass();
            zzatVar.zzA = zzbjVar;
            zzatVar.zzw |= 8;
        }

        public static void ad(zzat zzatVar) {
            zzatVar.zzw &= -16385;
            zzatVar.zzL = 0;
        }

        public static void ae(zzat zzatVar, zzbj zzbjVar) {
            zzatVar.getClass();
            zzbjVar.getClass();
            zzbj zzbjVar2 = zzatVar.zzA;
            if (zzbjVar2 != null && zzbjVar2 != zzbj.zzg()) {
                zzbj.zza zzd2 = zzbj.zzd(zzbjVar2);
                zzd2.zzbj(zzbjVar);
                zzbjVar = zzd2.zzbs();
            }
            zzatVar.zzA = zzbjVar;
            zzatVar.zzw |= 8;
        }

        public static void af(zzat zzatVar, zzbe zzbeVar) {
            zzatVar.getClass();
            zzbeVar.getClass();
            zzatVar.zzy = zzbeVar;
            zzatVar.zzw |= 2;
        }

        public static void ag(zzat zzatVar) {
            zzatVar.zzw &= -2049;
            zzatVar.zzI = 0;
        }

        public static void ah(int i, zzat zzatVar) {
            zzatVar.zzw |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
            zzatVar.zzE = i;
        }

        public static void ai(zzat zzatVar, zzau zzauVar) {
            zzatVar.getClass();
            zzauVar.getClass();
            zzatVar.zzB = zzauVar;
            zzatVar.zzw |= 16;
        }

        public static void aj(int i, zzat zzatVar) {
            zzatVar.zzw |= 2048;
            zzatVar.zzI = i;
        }

        public static void ak(zzat zzatVar, zzba zzbaVar) {
            zzatVar.getClass();
            zzbaVar.getClass();
            zzatVar.zzx = zzbaVar;
            zzatVar.zzw |= 1;
        }

        public static void al(zzat zzatVar, zzba zzbaVar) {
            zzatVar.getClass();
            zzbaVar.getClass();
            zzba zzbaVar2 = zzatVar.zzx;
            if (zzbaVar2 != null && zzbaVar2 != zzba.zzi()) {
                zzba.zza zzg2 = zzba.zzg(zzbaVar2);
                zzg2.zzbj(zzbaVar);
                zzbaVar = zzg2.zzbs();
            }
            zzatVar.zzx = zzbaVar;
            zzatVar.zzw |= 1;
        }

        public static void am(zzat zzatVar) {
            zzatVar.zzD = null;
            zzatVar.zzw &= -65;
        }

        public static void an(int i, zzat zzatVar) {
            zzatVar.zzw |= 8192;
            zzatVar.zzK = i;
        }

        public static void ao(zzat zzatVar, zzay zzayVar) {
            zzatVar.getClass();
            zzayVar.getClass();
            zzay zzayVar2 = zzatVar.zzD;
            if (zzayVar2 != null && zzayVar2 != zzay.zzi()) {
                zzay.zza zzg2 = zzay.zzg(zzayVar2);
                zzg2.zzbj(zzayVar);
                zzayVar = zzg2.zzbs();
            }
            zzatVar.zzD = zzayVar;
            zzatVar.zzw |= 64;
        }

        public static void b(int i, zzat zzatVar) {
            zzatVar.zzw |= 1024;
            zzatVar.zzH = i;
        }

        public static void d(int i, zzat zzatVar) {
            zzatVar.zzw |= 16384;
            zzatVar.zzL = i;
        }

        public static void e(zzat zzatVar) {
            zzatVar.zzB = null;
            zzatVar.zzw &= -17;
        }

        public static void f(zzat zzatVar) {
            zzatVar.zzy = null;
            zzatVar.zzw &= -3;
        }

        public static void g(int i, zzat zzatVar) {
            zzatVar.zzw |= 4096;
            zzatVar.zzJ = i;
        }

        public static void h(zzat zzatVar, zzap zzapVar) {
            zzatVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzatVar.zzG;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzatVar.zzG = zzapVar;
            zzatVar.zzw |= 512;
        }

        public static void i(zzat zzatVar) {
            zzatVar.zzw &= -129;
            zzatVar.zzE = 0;
        }

        public static void j(zzat zzatVar) {
            zzatVar.zzw &= -8193;
            zzatVar.zzK = 0;
        }

        public static void k(zzat zzatVar, long j) {
            zzatVar.zzw |= 32768;
            zzatVar.zzM = j;
        }

        public static void l(zzat zzatVar, zzbg zzbgVar) {
            zzatVar.getClass();
            zzbgVar.getClass();
            zzbg zzbgVar2 = zzatVar.zzz;
            if (zzbgVar2 != null && zzbgVar2 != zzbg.zzh()) {
                zzbg.zza zzf2 = zzbg.zzf(zzbgVar2);
                zzf2.zzbj(zzbgVar);
                zzbgVar = zzf2.zzbs();
            }
            zzatVar.zzz = zzbgVar;
            zzatVar.zzw |= 4;
        }

        public static void m(zzat zzatVar) {
            zzatVar.zzw &= -32769;
            zzatVar.zzM = 0L;
        }

        public static void n(zzat zzatVar, zzay zzayVar) {
            zzatVar.getClass();
            zzayVar.getClass();
            zzatVar.zzD = zzayVar;
            zzatVar.zzw |= 64;
        }

        public static void o(zzat zzatVar) {
            zzatVar.zzG = null;
            zzatVar.zzw &= -513;
        }

        public static void p(zzat zzatVar, zzbe zzbeVar) {
            zzatVar.getClass();
            zzbeVar.getClass();
            zzbe zzbeVar2 = zzatVar.zzy;
            if (zzbeVar2 != null && zzbeVar2 != zzbe.zzj()) {
                zzbe.zza zzh2 = zzbe.zzh(zzbeVar2);
                zzh2.zzbj(zzbeVar);
                zzbeVar = zzh2.zzbs();
            }
            zzatVar.zzy = zzbeVar;
            zzatVar.zzw |= 2;
        }

        public static void q(zzat zzatVar) {
            zzatVar.zzz = null;
            zzatVar.zzw &= -5;
        }

        public static void r(zzat zzatVar, zzau zzauVar) {
            zzatVar.getClass();
            zzauVar.getClass();
            zzau zzauVar2 = zzatVar.zzB;
            if (zzauVar2 != null && zzauVar2 != zzau.zzg()) {
                zzau.zza zzd2 = zzau.zzd(zzauVar2);
                zzd2.zzbj(zzauVar);
                zzauVar = zzd2.zzbs();
            }
            zzatVar.zzB = zzauVar;
            zzatVar.zzw |= 16;
        }

        public static void s(zzat zzatVar) {
            zzatVar.zzC = null;
            zzatVar.zzw &= -33;
        }

        public static void t(zzat zzatVar, zzbg zzbgVar) {
            zzatVar.getClass();
            zzbgVar.getClass();
            zzatVar.zzz = zzbgVar;
            zzatVar.zzw |= 4;
        }

        public static void u(zzat zzatVar) {
            zzatVar.zzA = null;
            zzatVar.zzw &= -9;
        }

        public static void v(int i, zzat zzatVar) {
            zzatVar.zzw |= 256;
            zzatVar.zzF = i;
        }

        public static void w(zzat zzatVar) {
            zzatVar.zzx = null;
            zzatVar.zzw &= -2;
        }

        public static void x(zzat zzatVar, zzbc zzbcVar) {
            zzatVar.getClass();
            zzbcVar.getClass();
            zzbc zzbcVar2 = zzatVar.zzC;
            if (zzbcVar2 != null && zzbcVar2 != zzbc.zzh()) {
                zzbc.zza zzf2 = zzbc.zzf(zzbcVar2);
                zzf2.zzbj(zzbcVar);
                zzbcVar = zzf2.zzbs();
            }
            zzatVar.zzC = zzbcVar;
            zzatVar.zzw |= 32;
        }

        public static void y(zzat zzatVar) {
            zzatVar.zzw &= -257;
            zzatVar.zzF = 0;
        }

        public static void z(zzat zzatVar) {
            zzatVar.zzw &= -1025;
            zzatVar.zzH = 0;
        }

        public static zza zzj() {
            return (zza) zzu.cl();
        }

        public static zza zzk(zzat zzatVar) {
            return (zza) zzu.ci(zzatVar);
        }

        public static zzat zzm() {
            return zzu;
        }

        public static zzat zzn(InputStream inputStream) throws IOException {
            return (zzat) zzgyx.br(zzu, inputStream);
        }

        public static zzat zzo(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzat) zzgyx.bo(zzu, inputStream, zzgyhVar);
        }

        public static zzat zzp(zzgxp zzgxpVar) throws zzgzm {
            return (zzat) zzgyx.by(zzu, zzgxpVar);
        }

        public static zzat zzq(zzgxv zzgxvVar) throws IOException {
            return (zzat) zzgyx.ca(zzu, zzgxvVar);
        }

        public static zzat zzr(InputStream inputStream) throws IOException {
            return (zzat) zzgyx.ch(zzu, inputStream);
        }

        public static zzat zzs(ByteBuffer byteBuffer) throws zzgzm {
            return (zzat) zzgyx.bx(zzu, byteBuffer);
        }

        public static zzat zzt(byte[] bArr) throws zzgzm {
            return (zzat) zzgyx.cc(zzu, bArr);
        }

        public static zzat zzu(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzat) zzgyx.bu(zzu, zzgxpVar, zzgyhVar);
        }

        public static zzat zzv(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzat) zzgyx.bv(zzu, zzgxvVar, zzgyhVar);
        }

        public static zzat zzw(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzat) zzgyx.bw(zzu, inputStream, zzgyhVar);
        }

        public static zzat zzx(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzat) zzgyx.cf(zzu, byteBuffer, zzgyhVar);
        }

        public static zzat zzy(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzat) zzgyx.bp(zzu, bArr, zzgyhVar);
        }

        public static zzhaq<zzat> zzz() {
            return zzu.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzu, "\u0004\u0010\u0000\u0001\u0005\u0014\u0010\u0000\u0000\u0000\u0005ဉ\u0000\u0006ဉ\u0001\u0007ဉ\u0002\bဉ\u0003\tဉ\u0004\nဉ\u0005\u000bဉ\u0006\fင\u0007\rင\b\u000eဉ\t\u000fင\n\u0010င\u000b\u0011င\f\u0012င\r\u0013င\u000e\u0014ဃ\u000f", new Object[]{"zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM"});
                case 3:
                    return new zzat();
                case 4:
                    return new zza(zzu);
                case 5:
                    return zzu;
                case 6:
                    zzhaq<zzat> zzhaqVar2 = zzv;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzat.class) {
                        try {
                            zzhaqVar = zzv;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzu);
                                zzv = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public int zza() {
            return this.zzK;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzaA() {
            return (this.zzw & 32768) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzaB() {
            return (this.zzw & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public zzau zzaf() {
            zzau zzauVar = this.zzB;
            return zzauVar == null ? zzau.zzg() : zzauVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public zzay zzag() {
            zzay zzayVar = this.zzD;
            return zzayVar == null ? zzay.zzi() : zzayVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public zzba zzah() {
            zzba zzbaVar = this.zzx;
            return zzbaVar == null ? zzba.zzi() : zzbaVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public zzbc zzai() {
            zzbc zzbcVar = this.zzC;
            return zzbcVar == null ? zzbc.zzh() : zzbcVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public zzbe zzaj() {
            zzbe zzbeVar = this.zzy;
            return zzbeVar == null ? zzbe.zzj() : zzbeVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public zzbg zzak() {
            zzbg zzbgVar = this.zzz;
            return zzbgVar == null ? zzbg.zzh() : zzbgVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public zzbj zzal() {
            zzbj zzbjVar = this.zzA;
            return zzbjVar == null ? zzbj.zzg() : zzbjVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzam() {
            return (this.zzw & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzan() {
            return (this.zzw & 64) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzao() {
            return (this.zzw & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzap() {
            return (this.zzw & 32) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzaq() {
            return (this.zzw & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzar() {
            return (this.zzw & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzas() {
            return (this.zzw & 8192) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzat() {
            return (this.zzw & 16384) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzau() {
            return (this.zzw & 1024) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzav() {
            return (this.zzw & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzaw() {
            return (this.zzw & 256) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzax() {
            return (this.zzw & 2048) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzay() {
            return (this.zzw & 4096) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public boolean zzaz() {
            return (this.zzw & 512) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public int zzb() {
            return this.zzL;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public int zzc() {
            return this.zzH;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public int zzd() {
            return this.zzE;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public int zze() {
            return this.zzF;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public int zzf() {
            return this.zzI;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public int zzg() {
            return this.zzJ;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public long zzh() {
            return this.zzM;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbi
        public zzap zzi() {
            zzap zzapVar = this.zzG;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }
    }

    public final class zzau extends zzgyx<zzau, zza> implements zzav {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzau zzd;
        private static volatile zzhaq<zzau> zze;
        private int zzf;
        private int zzg = 1000;
        private zzaw zzh;
        private zzap zzi;

        public final class zza extends zzgyr<zzau, zza> implements zzav {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzav
            public zzq zza() {
                return ((zzau) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzav
            public zzap zzb() {
                return ((zzau) this.f8682e).zzb();
            }

            public zza zzc() {
                f();
                zzau.i((zzau) this.f8682e);
                return this;
            }

            public zza zzd() {
                f();
                zzau.h((zzau) this.f8682e);
                return this;
            }

            public zza zze() {
                f();
                zzau.a((zzau) this.f8682e);
                return this;
            }

            public zza zzf(zzaw zzawVar) {
                f();
                zzau.j((zzau) this.f8682e, zzawVar);
                return this;
            }

            public zza zzg(zzap zzapVar) {
                f();
                zzau.g((zzau) this.f8682e, zzapVar);
                return this;
            }

            public zza zzh(zzaw.zza zzaVar) {
                f();
                zzau.f((zzau) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzi(zzaw zzawVar) {
                f();
                zzau.f((zzau) this.f8682e, zzawVar);
                return this;
            }

            public zza zzj(zzap.zza zzaVar) {
                f();
                zzau.b((zzau) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzk(zzap zzapVar) {
                f();
                zzau.b((zzau) this.f8682e, zzapVar);
                return this;
            }

            public zza zzl(zzq zzqVar) {
                f();
                zzau.e((zzau) this.f8682e, zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzav
            public zzaw zzm() {
                return ((zzau) this.f8682e).zzm();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzav
            public boolean zzn() {
                return ((zzau) this.f8682e).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzav
            public boolean zzo() {
                return ((zzau) this.f8682e).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzav
            public boolean zzp() {
                return ((zzau) this.f8682e).zzp();
            }
        }

        static {
            zzau zzauVar = new zzau();
            zzd = zzauVar;
            zzgyx.cb(zzau.class, zzauVar);
        }

        public static void a(zzau zzauVar) {
            zzauVar.zzf &= -2;
            zzauVar.zzg = 1000;
        }

        public static void b(zzau zzauVar, zzap zzapVar) {
            zzauVar.getClass();
            zzapVar.getClass();
            zzauVar.zzi = zzapVar;
            zzauVar.zzf |= 4;
        }

        public static void e(zzau zzauVar, zzq zzqVar) {
            zzauVar.getClass();
            zzauVar.zzg = zzqVar.zza();
            zzauVar.zzf |= 1;
        }

        public static void f(zzau zzauVar, zzaw zzawVar) {
            zzauVar.getClass();
            zzawVar.getClass();
            zzauVar.zzh = zzawVar;
            zzauVar.zzf |= 2;
        }

        public static void g(zzau zzauVar, zzap zzapVar) {
            zzauVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzauVar.zzi;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzauVar.zzi = zzapVar;
            zzauVar.zzf |= 4;
        }

        public static void h(zzau zzauVar) {
            zzauVar.zzi = null;
            zzauVar.zzf &= -5;
        }

        public static void i(zzau zzauVar) {
            zzauVar.zzh = null;
            zzauVar.zzf &= -3;
        }

        public static void j(zzau zzauVar, zzaw zzawVar) {
            zzauVar.getClass();
            zzawVar.getClass();
            zzaw zzawVar2 = zzauVar.zzh;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            zzauVar.zzh = zzawVar;
            zzauVar.zzf |= 2;
        }

        public static zza zzc() {
            return (zza) zzd.cl();
        }

        public static zza zzd(zzau zzauVar) {
            return (zza) zzd.ci(zzauVar);
        }

        public static zzau zzg() {
            return zzd;
        }

        public static zzau zzh(InputStream inputStream) throws IOException {
            return (zzau) zzgyx.br(zzd, inputStream);
        }

        public static zzau zzi(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzau) zzgyx.bo(zzd, inputStream, zzgyhVar);
        }

        public static zzau zzj(zzgxp zzgxpVar) throws zzgzm {
            return (zzau) zzgyx.by(zzd, zzgxpVar);
        }

        public static zzau zzk(zzgxv zzgxvVar) throws IOException {
            return (zzau) zzgyx.ca(zzd, zzgxvVar);
        }

        public static zzau zzl(InputStream inputStream) throws IOException {
            return (zzau) zzgyx.ch(zzd, inputStream);
        }

        public static zzau zzq(ByteBuffer byteBuffer) throws zzgzm {
            return (zzau) zzgyx.bx(zzd, byteBuffer);
        }

        public static zzau zzr(byte[] bArr) throws zzgzm {
            return (zzau) zzgyx.cc(zzd, bArr);
        }

        public static zzau zzs(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzau) zzgyx.bu(zzd, zzgxpVar, zzgyhVar);
        }

        public static zzau zzt(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzau) zzgyx.bv(zzd, zzgxvVar, zzgyhVar);
        }

        public static zzau zzu(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzau) zzgyx.bw(zzd, inputStream, zzgyhVar);
        }

        public static zzau zzv(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzau) zzgyx.cf(zzd, byteBuffer, zzgyhVar);
        }

        public static zzau zzw(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzau) zzgyx.bp(zzd, bArr, zzgyhVar);
        }

        public static zzhaq<zzau> zzx() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzq.zze(), "zzh", "zzi"});
                case 3:
                    return new zzau();
                case 4:
                    return new zza(zzd);
                case 5:
                    return zzd;
                case 6:
                    zzhaq<zzau> zzhaqVar2 = zze;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzau.class) {
                        try {
                            zzhaqVar = zze;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzd);
                                zze = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzav
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzg);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzav
        public zzap zzb() {
            zzap zzapVar = this.zzi;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzav
        public zzaw zzm() {
            zzaw zzawVar = this.zzh;
            return zzawVar == null ? zzaw.zzg() : zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzav
        public boolean zzn() {
            return (this.zzf & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzav
        public boolean zzo() {
            return (this.zzf & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzav
        public boolean zzp() {
            return (this.zzf & 1) != 0;
        }
    }

    public interface zzav extends zzhaj {
        zzq zza();

        zzap zzb();

        zzaw zzm();

        boolean zzn();

        boolean zzo();

        boolean zzp();
    }

    public final class zzaw extends zzgyx<zzaw, zza> implements zzax {
        public static final int zza = 1;
        private static final zzaw zzb;
        private static volatile zzhaq<zzaw> zzc;
        private int zzd;
        private int zze;

        public final class zza extends zzgyr<zzaw, zza> implements zzax {
            public zza zza() {
                f();
                zzaw.a((zzaw) this.f8682e);
                return this;
            }

            public zza zzb(zzb zzbVar) {
                f();
                zzaw.b((zzaw) this.f8682e, zzbVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzax
            public zzb zzc() {
                return ((zzaw) this.f8682e).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzax
            public boolean zzd() {
                return ((zzaw) this.f8682e).zzd();
            }
        }

        public enum zzb implements zzgzb {
            VIDEO_ERROR_CODE_UNSPECIFIED(0),
            OPENGL_RENDERING_FAILED(1),
            CACHE_LOAD_FAILED(2),
            ANDROID_TARGET_API_TOO_LOW(3);


            /* renamed from: a, reason: collision with root package name */
            public static final ad f4708a = new ad();
            public static final int zze = 0;
            public static final int zzf = 1;
            public static final int zzg = 2;
            public static final int zzh = 3;
            private final int zzk;

            zzb(int i) {
                this.zzk = i;
            }

            public static zzb zzb(int i) {
                if (i == 0) {
                    return VIDEO_ERROR_CODE_UNSPECIFIED;
                }
                if (i == 1) {
                    return OPENGL_RENDERING_FAILED;
                }
                if (i == 2) {
                    return CACHE_LOAD_FAILED;
                }
                if (i != 3) {
                    return null;
                }
                return ANDROID_TARGET_API_TOO_LOW;
            }

            public static zzgzc<zzb> zzd() {
                return f4708a;
            }

            public static zzgzd zze() {
                return c.f3950a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(zza());
            }

            @Override // com.google.android.gms.internal.ads.zzgzb
            public final int zza() {
                return this.zzk;
            }
        }

        static {
            zzaw zzawVar = new zzaw();
            zzb = zzawVar;
            zzgyx.cb(zzaw.class, zzawVar);
        }

        public static void a(zzaw zzawVar) {
            zzawVar.zzd &= -2;
            zzawVar.zze = 0;
        }

        public static void b(zzaw zzawVar, zzb zzbVar) {
            zzawVar.getClass();
            zzawVar.zze = zzbVar.zza();
            zzawVar.zzd |= 1;
        }

        public static zza zza() {
            return (zza) zzb.cl();
        }

        public static zza zzb(zzaw zzawVar) {
            return (zza) zzb.ci(zzawVar);
        }

        public static zzaw zzg() {
            return zzb;
        }

        public static zzaw zzh(InputStream inputStream) throws IOException {
            return (zzaw) zzgyx.br(zzb, inputStream);
        }

        public static zzaw zzi(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzaw) zzgyx.bo(zzb, inputStream, zzgyhVar);
        }

        public static zzaw zzj(zzgxp zzgxpVar) throws zzgzm {
            return (zzaw) zzgyx.by(zzb, zzgxpVar);
        }

        public static zzaw zzk(zzgxv zzgxvVar) throws IOException {
            return (zzaw) zzgyx.ca(zzb, zzgxvVar);
        }

        public static zzaw zzl(InputStream inputStream) throws IOException {
            return (zzaw) zzgyx.ch(zzb, inputStream);
        }

        public static zzaw zzm(ByteBuffer byteBuffer) throws zzgzm {
            return (zzaw) zzgyx.bx(zzb, byteBuffer);
        }

        public static zzaw zzn(byte[] bArr) throws zzgzm {
            return (zzaw) zzgyx.cc(zzb, bArr);
        }

        public static zzaw zzo(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzaw) zzgyx.bu(zzb, zzgxpVar, zzgyhVar);
        }

        public static zzaw zzp(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzaw) zzgyx.bv(zzb, zzgxvVar, zzgyhVar);
        }

        public static zzaw zzq(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzaw) zzgyx.bw(zzb, inputStream, zzgyhVar);
        }

        public static zzaw zzr(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzaw) zzgyx.cf(zzb, byteBuffer, zzgyhVar);
        }

        public static zzaw zzs(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzaw) zzgyx.bp(zzb, bArr, zzgyhVar);
        }

        public static zzhaq<zzaw> zzt() {
            return zzb.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzb.zze()});
                case 3:
                    return new zzaw();
                case 4:
                    return new zza(zzb);
                case 5:
                    return zzb;
                case 6:
                    zzhaq<zzaw> zzhaqVar2 = zzc;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzaw.class) {
                        try {
                            zzhaqVar = zzc;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzb);
                                zzc = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzax
        public zzb zzc() {
            zzb zzb2 = zzb.zzb(this.zze);
            return zzb2 == null ? zzb.VIDEO_ERROR_CODE_UNSPECIFIED : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzax
        public boolean zzd() {
            return (this.zzd & 1) != 0;
        }
    }

    public interface zzax extends zzhaj {
        zzaw.zzb zzc();

        boolean zzd();
    }

    public final class zzay extends zzgyx<zzay, zza> implements zzaz {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        private static final zzay zze;
        private static volatile zzhaq<zzay> zzf;
        private int zzg;
        private zzar zzh;
        private int zzi = 1000;
        private zzaw zzj;
        private zzap zzk;

        public final class zza extends zzgyr<zzay, zza> implements zzaz {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
            public zzq zza() {
                return ((zzay) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
            public zzap zzb() {
                return ((zzay) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
            public zzar zzc() {
                return ((zzay) this.f8682e).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
            public zzaw zzd() {
                return ((zzay) this.f8682e).zzd();
            }

            public zza zze() {
                f();
                zzay.a((zzay) this.f8682e);
                return this;
            }

            public zza zzf() {
                f();
                zzay.m((zzay) this.f8682e);
                return this;
            }

            public zza zzg() {
                f();
                zzay.h((zzay) this.f8682e);
                return this;
            }

            public zza zzh() {
                f();
                zzay.g((zzay) this.f8682e);
                return this;
            }

            public zza zzi(zzaw zzawVar) {
                f();
                zzay.b((zzay) this.f8682e, zzawVar);
                return this;
            }

            public zza zzj(zzap zzapVar) {
                f();
                zzay.f((zzay) this.f8682e, zzapVar);
                return this;
            }

            public zza zzk(zzar zzarVar) {
                f();
                zzay.e((zzay) this.f8682e, zzarVar);
                return this;
            }

            public zza zzl(zzaw.zza zzaVar) {
                f();
                zzay.k((zzay) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzm(zzaw zzawVar) {
                f();
                zzay.k((zzay) this.f8682e, zzawVar);
                return this;
            }

            public zza zzn(zzap.zza zzaVar) {
                f();
                zzay.j((zzay) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzo(zzap zzapVar) {
                f();
                zzay.j((zzay) this.f8682e, zzapVar);
                return this;
            }

            public zza zzp(zzq zzqVar) {
                f();
                zzay.d((zzay) this.f8682e, zzqVar);
                return this;
            }

            public zza zzq(zzar.zza zzaVar) {
                f();
                zzay.i((zzay) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzr(zzar zzarVar) {
                f();
                zzay.i((zzay) this.f8682e, zzarVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
            public boolean zzs() {
                return ((zzay) this.f8682e).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
            public boolean zzt() {
                return ((zzay) this.f8682e).zzt();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
            public boolean zzu() {
                return ((zzay) this.f8682e).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
            public boolean zzv() {
                return ((zzay) this.f8682e).zzv();
            }
        }

        static {
            zzay zzayVar = new zzay();
            zze = zzayVar;
            zzgyx.cb(zzay.class, zzayVar);
        }

        public static void a(zzay zzayVar) {
            zzayVar.zzj = null;
            zzayVar.zzg &= -5;
        }

        public static void b(zzay zzayVar, zzaw zzawVar) {
            zzayVar.getClass();
            zzawVar.getClass();
            zzaw zzawVar2 = zzayVar.zzj;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            zzayVar.zzj = zzawVar;
            zzayVar.zzg |= 4;
        }

        public static void d(zzay zzayVar, zzq zzqVar) {
            zzayVar.getClass();
            zzayVar.zzi = zzqVar.zza();
            zzayVar.zzg |= 2;
        }

        public static void e(zzay zzayVar, zzar zzarVar) {
            zzayVar.getClass();
            zzarVar.getClass();
            zzar zzarVar2 = zzayVar.zzh;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            zzayVar.zzh = zzarVar;
            zzayVar.zzg |= 1;
        }

        public static void f(zzay zzayVar, zzap zzapVar) {
            zzayVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzayVar.zzk;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzayVar.zzk = zzapVar;
            zzayVar.zzg |= 8;
        }

        public static void g(zzay zzayVar) {
            zzayVar.zzh = null;
            zzayVar.zzg &= -2;
        }

        public static void h(zzay zzayVar) {
            zzayVar.zzg &= -3;
            zzayVar.zzi = 1000;
        }

        public static void i(zzay zzayVar, zzar zzarVar) {
            zzayVar.getClass();
            zzarVar.getClass();
            zzayVar.zzh = zzarVar;
            zzayVar.zzg |= 1;
        }

        public static void j(zzay zzayVar, zzap zzapVar) {
            zzayVar.getClass();
            zzapVar.getClass();
            zzayVar.zzk = zzapVar;
            zzayVar.zzg |= 8;
        }

        public static void k(zzay zzayVar, zzaw zzawVar) {
            zzayVar.getClass();
            zzawVar.getClass();
            zzayVar.zzj = zzawVar;
            zzayVar.zzg |= 4;
        }

        public static void m(zzay zzayVar) {
            zzayVar.zzk = null;
            zzayVar.zzg &= -9;
        }

        public static zza zzf() {
            return (zza) zze.cl();
        }

        public static zza zzg(zzay zzayVar) {
            return (zza) zze.ci(zzayVar);
        }

        public static zzay zzi() {
            return zze;
        }

        public static zzay zzj(InputStream inputStream) throws IOException {
            return (zzay) zzgyx.br(zze, inputStream);
        }

        public static zzay zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzay) zzgyx.bo(zze, inputStream, zzgyhVar);
        }

        public static zzay zzl(zzgxp zzgxpVar) throws zzgzm {
            return (zzay) zzgyx.by(zze, zzgxpVar);
        }

        public static zzay zzm(zzgxv zzgxvVar) throws IOException {
            return (zzay) zzgyx.ca(zze, zzgxvVar);
        }

        public static zzay zzn(InputStream inputStream) throws IOException {
            return (zzay) zzgyx.ch(zze, inputStream);
        }

        public static zzay zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzay) zzgyx.bx(zze, byteBuffer);
        }

        public static zzay zzp(byte[] bArr) throws zzgzm {
            return (zzay) zzgyx.cc(zze, bArr);
        }

        public static zzay zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzay) zzgyx.bu(zze, zzgxpVar, zzgyhVar);
        }

        public static zzay zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzay) zzgyx.bv(zze, zzgxvVar, zzgyhVar);
        }

        public static zzay zzw(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzay) zzgyx.bw(zze, inputStream, zzgyhVar);
        }

        public static zzay zzx(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzay) zzgyx.cf(zze, byteBuffer, zzgyhVar);
        }

        public static zzay zzy(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzay) zzgyx.bp(zze, bArr, zzgyhVar);
        }

        public static zzhaq<zzay> zzz() {
            return zze.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzg", "zzh", "zzi", zzq.zze(), "zzj", "zzk"});
                case 3:
                    return new zzay();
                case 4:
                    return new zza(zze);
                case 5:
                    return zze;
                case 6:
                    zzhaq<zzay> zzhaqVar2 = zzf;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzay.class) {
                        try {
                            zzhaqVar = zzf;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zze);
                                zzf = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzi);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
        public zzap zzb() {
            zzap zzapVar = this.zzk;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
        public zzar zzc() {
            zzar zzarVar = this.zzh;
            return zzarVar == null ? zzar.zzh() : zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
        public zzaw zzd() {
            zzaw zzawVar = this.zzj;
            return zzawVar == null ? zzaw.zzg() : zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
        public boolean zzs() {
            return (this.zzg & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
        public boolean zzt() {
            return (this.zzg & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
        public boolean zzu() {
            return (this.zzg & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaz
        public boolean zzv() {
            return (this.zzg & 1) != 0;
        }
    }

    public interface zzaz extends zzhaj {
        zzq zza();

        zzap zzb();

        zzar zzc();

        zzaw zzd();

        boolean zzs();

        boolean zzt();

        boolean zzu();

        boolean zzv();
    }

    public final class zzb extends zzgyx<zzb, zzc> implements zzc {
        public static final int zza = 1;
        private static final zzb zzb;
        private static volatile zzhaq<zzb> zzc;
        private zzgzj<zza> zzd = ahn.f10232c;

        public final class zza extends zzgyx<zza, C0209zza> implements InterfaceC0210zzb {
            public static final int zza = 1;
            public static final int zzb = 2;
            public static final int zzc = 3;
            private static final zza zzd;
            private static volatile zzhaq<zza> zze;
            private int zzf;
            private int zzg;
            private zze zzh;
            private zzg zzi;

            /* renamed from: com.google.android.gms.internal.ads.zzbbs$zzb$zza$zza, reason: collision with other inner class name */
            public final class C0209zza extends zzgyr<zza, C0209zza> implements InterfaceC0210zzb {
                public C0209zza zza() {
                    f();
                    zza.i((zza) this.f8682e);
                    return this;
                }

                public C0209zza zzb() {
                    f();
                    zza.h((zza) this.f8682e);
                    return this;
                }

                public C0209zza zzc() {
                    f();
                    zza.a((zza) this.f8682e);
                    return this;
                }

                public C0209zza zzd(zze zzeVar) {
                    f();
                    zza.j((zza) this.f8682e, zzeVar);
                    return this;
                }

                public C0209zza zze(zzg zzgVar) {
                    f();
                    zza.g((zza) this.f8682e, zzgVar);
                    return this;
                }

                public C0209zza zzf(zzd zzdVar) {
                    f();
                    zza.f((zza) this.f8682e, zzdVar);
                    return this;
                }

                public C0209zza zzg(zze.zza zzaVar) {
                    f();
                    zza.b((zza) this.f8682e, zzaVar.zzbr());
                    return this;
                }

                public C0209zza zzh(zze zzeVar) {
                    f();
                    zza.b((zza) this.f8682e, zzeVar);
                    return this;
                }

                public C0209zza zzi(zzg.zza zzaVar) {
                    f();
                    zza.e((zza) this.f8682e, zzaVar.zzbr());
                    return this;
                }

                public C0209zza zzj(zzg zzgVar) {
                    f();
                    zza.e((zza) this.f8682e, zzgVar);
                    return this;
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
                public zzd zzk() {
                    return ((zza) this.f8682e).zzk();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
                public zze zzl() {
                    return ((zza) this.f8682e).zzl();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
                public zzg zzm() {
                    return ((zza) this.f8682e).zzm();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
                public boolean zzn() {
                    return ((zza) this.f8682e).zzn();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
                public boolean zzo() {
                    return ((zza) this.f8682e).zzo();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
                public boolean zzp() {
                    return ((zza) this.f8682e).zzp();
                }
            }

            static {
                zza zzaVar = new zza();
                zzd = zzaVar;
                zzgyx.cb(zza.class, zzaVar);
            }

            public static void a(zza zzaVar) {
                zzaVar.zzi = null;
                zzaVar.zzf &= -5;
            }

            public static void b(zza zzaVar, zze zzeVar) {
                zzaVar.getClass();
                zzeVar.getClass();
                zzaVar.zzh = zzeVar;
                zzaVar.zzf |= 2;
            }

            public static void e(zza zzaVar, zzg zzgVar) {
                zzaVar.getClass();
                zzgVar.getClass();
                zzaVar.zzi = zzgVar;
                zzaVar.zzf |= 4;
            }

            public static void f(zza zzaVar, zzd zzdVar) {
                zzaVar.getClass();
                zzaVar.zzg = zzdVar.zza();
                zzaVar.zzf |= 1;
            }

            public static void g(zza zzaVar, zzg zzgVar) {
                zzaVar.getClass();
                zzgVar.getClass();
                zzg zzgVar2 = zzaVar.zzi;
                if (zzgVar2 != null && zzgVar2 != zzg.zzf()) {
                    zzg.zza zzc2 = zzg.zzc(zzgVar2);
                    zzc2.zzbj(zzgVar);
                    zzgVar = zzc2.zzbs();
                }
                zzaVar.zzi = zzgVar;
                zzaVar.zzf |= 4;
            }

            public static void h(zza zzaVar) {
                zzaVar.zzh = null;
                zzaVar.zzf &= -3;
            }

            public static void i(zza zzaVar) {
                zzaVar.zzf &= -2;
                zzaVar.zzg = 0;
            }

            public static void j(zza zzaVar, zze zzeVar) {
                zzaVar.getClass();
                zzeVar.getClass();
                zze zzeVar2 = zzaVar.zzh;
                if (zzeVar2 != null && zzeVar2 != zze.zzi()) {
                    zze.zza zzc2 = zze.zzc(zzeVar2);
                    zzc2.zzbj(zzeVar);
                    zzeVar = zzc2.zzbs();
                }
                zzaVar.zzh = zzeVar;
                zzaVar.zzf |= 2;
            }

            public static C0209zza zza() {
                return (C0209zza) zzd.cl();
            }

            public static C0209zza zzb(zza zzaVar) {
                return (C0209zza) zzd.ci(zzaVar);
            }

            public static zza zzd() {
                return zzd;
            }

            public static zza zzf(InputStream inputStream) throws IOException {
                return (zza) zzgyx.br(zzd, inputStream);
            }

            public static zza zzg(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
                return (zza) zzgyx.bo(zzd, inputStream, zzgyhVar);
            }

            public static zza zzh(zzgxp zzgxpVar) throws zzgzm {
                return (zza) zzgyx.by(zzd, zzgxpVar);
            }

            public static zza zzi(zzgxv zzgxvVar) throws IOException {
                return (zza) zzgyx.ca(zzd, zzgxvVar);
            }

            public static zza zzj(InputStream inputStream) throws IOException {
                return (zza) zzgyx.ch(zzd, inputStream);
            }

            public static zza zzq(ByteBuffer byteBuffer) throws zzgzm {
                return (zza) zzgyx.bx(zzd, byteBuffer);
            }

            public static zza zzr(byte[] bArr) throws zzgzm {
                return (zza) zzgyx.cc(zzd, bArr);
            }

            public static zza zzs(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
                return (zza) zzgyx.bu(zzd, zzgxpVar, zzgyhVar);
            }

            public static zza zzt(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
                return (zza) zzgyx.bv(zzd, zzgxvVar, zzgyhVar);
            }

            public static zza zzu(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
                return (zza) zzgyx.bw(zzd, inputStream, zzgyhVar);
            }

            public static zza zzv(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
                return (zza) zzgyx.cf(zzd, byteBuffer, zzgyhVar);
            }

            public static zza zzw(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
                return (zza) zzgyx.bp(zzd, bArr, zzgyhVar);
            }

            public static zzhaq<zza> zzx() {
                return zzd.zzbN();
            }

            @Override // com.google.android.gms.internal.ads.zzgyx
            public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
                zzhaq zzhaqVar;
                switch (zzgywVar.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return new cyk(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzd.zze(), "zzh", "zzi"});
                    case 3:
                        return new zza();
                    case 4:
                        return new C0209zza(zzd);
                    case 5:
                        return zzd;
                    case 6:
                        zzhaq<zza> zzhaqVar2 = zze;
                        if (zzhaqVar2 != null) {
                            return zzhaqVar2;
                        }
                        synchronized (zza.class) {
                            try {
                                zzhaqVar = zze;
                                if (zzhaqVar == null) {
                                    zzhaqVar = new zzgys(zzd);
                                    zze = zzhaqVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        return zzhaqVar;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
            public zzd zzk() {
                zzd zzb2 = zzd.zzb(this.zzg);
                return zzb2 == null ? zzd.UNSPECIFIED : zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
            public zze zzl() {
                zze zzeVar = this.zzh;
                return zzeVar == null ? zze.zzi() : zzeVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
            public zzg zzm() {
                zzg zzgVar = this.zzi;
                return zzgVar == null ? zzg.zzf() : zzgVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
            public boolean zzn() {
                return (this.zzf & 1) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
            public boolean zzo() {
                return (this.zzf & 2) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.InterfaceC0210zzb
            public boolean zzp() {
                return (this.zzf & 4) != 0;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.zzbbs$zzb$zzb, reason: collision with other inner class name */
        public interface InterfaceC0210zzb extends zzhaj {
            zzd zzk();

            zze zzl();

            zzg zzm();

            boolean zzn();

            boolean zzo();

            boolean zzp();
        }

        public final class zzc extends zzgyr<zzb, zzc> implements zzc {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzc
            public int zza() {
                return ((zzb) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzc
            public zza zzb(int i) {
                return ((zzb) this.f8682e).zzb(i);
            }

            public zzc zzc(Iterable<? extends zza> iterable) {
                f();
                zzb.e((zzb) this.f8682e, iterable);
                return this;
            }

            public zzc zzd(zza.C0209zza c0209zza) {
                f();
                zzb.d((zzb) this.f8682e, c0209zza.zzbr());
                return this;
            }

            public zzc zze(zza zzaVar) {
                f();
                zzb.d((zzb) this.f8682e, zzaVar);
                return this;
            }

            public zzc zzf(int i, zza.C0209zza c0209zza) {
                f();
                zzb.g((zzb) this.f8682e, i, c0209zza.zzbr());
                return this;
            }

            public zzc zzg(int i, zza zzaVar) {
                f();
                zzb.g((zzb) this.f8682e, i, zzaVar);
                return this;
            }

            public zzc zzh() {
                f();
                zzb.a((zzb) this.f8682e);
                return this;
            }

            public zzc zzi(int i) {
                f();
                zzb.h((zzb) this.f8682e, i);
                return this;
            }

            public zzc zzj(int i, zza.C0209zza c0209zza) {
                f();
                zzb.f((zzb) this.f8682e, i, c0209zza.zzbr());
                return this;
            }

            public zzc zzk(int i, zza zzaVar) {
                f();
                zzb.f((zzb) this.f8682e, i, zzaVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzc
            public List<zza> zzl() {
                return Collections.unmodifiableList(((zzb) this.f8682e).zzl());
            }
        }

        public enum zzd implements zzgzb {
            UNSPECIFIED(0),
            IN_MEMORY(1);


            /* renamed from: a, reason: collision with root package name */
            public static final m f4710a = new m();
            public static final int zzc = 0;
            public static final int zzd = 1;
            private final int zzg;

            zzd(int i) {
                this.zzg = i;
            }

            public static zzd zzb(int i) {
                if (i == 0) {
                    return UNSPECIFIED;
                }
                if (i != 1) {
                    return null;
                }
                return IN_MEMORY;
            }

            public static zzgzc<zzd> zzd() {
                return f4710a;
            }

            public static zzgzd zze() {
                return aa.f3931a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(zza());
            }

            @Override // com.google.android.gms.internal.ads.zzgzb
            public final int zza() {
                return this.zzg;
            }
        }

        public final class zze extends zzgyx<zze, zza> implements zzf {
            public static final int zza = 1;
            public static final int zzb = 2;
            private static final zze zzc;
            private static volatile zzhaq<zze> zzd;
            private int zze;
            private boolean zzf;
            private int zzg;

            public final class zza extends zzgyr<zze, zza> implements zzf {
                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzf
                public int zza() {
                    return ((zze) this.f8682e).zza();
                }

                public zza zzb() {
                    f();
                    zze.f((zze) this.f8682e);
                    return this;
                }

                public zza zzc() {
                    f();
                    zze.e((zze) this.f8682e);
                    return this;
                }

                public zza zzd(boolean z) {
                    f();
                    zze.d((zze) this.f8682e, z);
                    return this;
                }

                public zza zze(int i) {
                    f();
                    zze.b((zze) this.f8682e, i);
                    return this;
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzf
                public boolean zzf() {
                    return ((zze) this.f8682e).zzf();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzf
                public boolean zzg() {
                    return ((zze) this.f8682e).zzg();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzf
                public boolean zzh() {
                    return ((zze) this.f8682e).zzh();
                }
            }

            static {
                zze zzeVar = new zze();
                zzc = zzeVar;
                zzgyx.cb(zze.class, zzeVar);
            }

            public static void b(zze zzeVar, int i) {
                zzeVar.zze |= 2;
                zzeVar.zzg = i;
            }

            public static void d(zze zzeVar, boolean z) {
                zzeVar.zze |= 1;
                zzeVar.zzf = z;
            }

            public static void e(zze zzeVar) {
                zzeVar.zze &= -3;
                zzeVar.zzg = 0;
            }

            public static void f(zze zzeVar) {
                zzeVar.zze &= -2;
                zzeVar.zzf = false;
            }

            public static zza zzb() {
                return (zza) zzc.cl();
            }

            public static zza zzc(zze zzeVar) {
                return (zza) zzc.ci(zzeVar);
            }

            public static zze zzi() {
                return zzc;
            }

            public static zze zzj(InputStream inputStream) throws IOException {
                return (zze) zzgyx.br(zzc, inputStream);
            }

            public static zze zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
                return (zze) zzgyx.bo(zzc, inputStream, zzgyhVar);
            }

            public static zze zzl(zzgxp zzgxpVar) throws zzgzm {
                return (zze) zzgyx.by(zzc, zzgxpVar);
            }

            public static zze zzm(zzgxv zzgxvVar) throws IOException {
                return (zze) zzgyx.ca(zzc, zzgxvVar);
            }

            public static zze zzn(InputStream inputStream) throws IOException {
                return (zze) zzgyx.ch(zzc, inputStream);
            }

            public static zze zzo(ByteBuffer byteBuffer) throws zzgzm {
                return (zze) zzgyx.bx(zzc, byteBuffer);
            }

            public static zze zzp(byte[] bArr) throws zzgzm {
                return (zze) zzgyx.cc(zzc, bArr);
            }

            public static zze zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
                return (zze) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
            }

            public static zze zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
                return (zze) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
            }

            public static zze zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
                return (zze) zzgyx.bw(zzc, inputStream, zzgyhVar);
            }

            public static zze zzt(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
                return (zze) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
            }

            public static zze zzu(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
                return (zze) zzgyx.bp(zzc, bArr, zzgyhVar);
            }

            public static zzhaq<zze> zzv() {
                return zzc.zzbN();
            }

            @Override // com.google.android.gms.internal.ads.zzgyx
            public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
                zzhaq zzhaqVar;
                switch (zzgywVar.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဋ\u0001", new Object[]{"zze", "zzf", "zzg"});
                    case 3:
                        return new zze();
                    case 4:
                        return new zza(zzc);
                    case 5:
                        return zzc;
                    case 6:
                        zzhaq<zze> zzhaqVar2 = zzd;
                        if (zzhaqVar2 != null) {
                            return zzhaqVar2;
                        }
                        synchronized (zze.class) {
                            try {
                                zzhaqVar = zzd;
                                if (zzhaqVar == null) {
                                    zzhaqVar = new zzgys(zzc);
                                    zzd = zzhaqVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        return zzhaqVar;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzf
            public int zza() {
                return this.zzg;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzf
            public boolean zzf() {
                return this.zzf;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzf
            public boolean zzg() {
                return (this.zze & 1) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzf
            public boolean zzh() {
                return (this.zze & 2) != 0;
            }
        }

        public interface zzf extends zzhaj {
            int zza();

            boolean zzf();

            boolean zzg();

            boolean zzh();
        }

        public final class zzg extends zzgyx<zzg, zza> implements zzh {
            public static final int zza = 1;
            public static final int zzb = 2;
            public static final int zzc = 3;
            private static final zzg zzd;
            private static volatile zzhaq<zzg> zze;
            private int zzf;
            private boolean zzg;
            private boolean zzh;
            private int zzi;

            public final class zza extends zzgyr<zzg, zza> implements zzh {
                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
                public int zza() {
                    return ((zzg) this.f8682e).zza();
                }

                public zza zzb() {
                    f();
                    zzg.e((zzg) this.f8682e);
                    return this;
                }

                public zza zzc() {
                    f();
                    zzg.d((zzg) this.f8682e);
                    return this;
                }

                public zza zzd() {
                    f();
                    zzg.a((zzg) this.f8682e);
                    return this;
                }

                public zza zze(boolean z) {
                    f();
                    zzg.h((zzg) this.f8682e, z);
                    return this;
                }

                public zza zzf(boolean z) {
                    f();
                    zzg.g((zzg) this.f8682e, z);
                    return this;
                }

                public zza zzg(int i) {
                    f();
                    zzg.f((zzg) this.f8682e, i);
                    return this;
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
                public boolean zzh() {
                    return ((zzg) this.f8682e).zzh();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
                public boolean zzi() {
                    return ((zzg) this.f8682e).zzi();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
                public boolean zzj() {
                    return ((zzg) this.f8682e).zzj();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
                public boolean zzk() {
                    return ((zzg) this.f8682e).zzk();
                }

                @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
                public boolean zzl() {
                    return ((zzg) this.f8682e).zzl();
                }
            }

            static {
                zzg zzgVar = new zzg();
                zzd = zzgVar;
                zzgyx.cb(zzg.class, zzgVar);
            }

            public static void a(zzg zzgVar) {
                zzgVar.zzf &= -5;
                zzgVar.zzi = 0;
            }

            public static void d(zzg zzgVar) {
                zzgVar.zzf &= -3;
                zzgVar.zzh = false;
            }

            public static void e(zzg zzgVar) {
                zzgVar.zzf &= -2;
                zzgVar.zzg = false;
            }

            public static void f(zzg zzgVar, int i) {
                zzgVar.zzf |= 4;
                zzgVar.zzi = i;
            }

            public static void g(zzg zzgVar, boolean z) {
                zzgVar.zzf |= 2;
                zzgVar.zzh = z;
            }

            public static void h(zzg zzgVar, boolean z) {
                zzgVar.zzf |= 1;
                zzgVar.zzg = z;
            }

            public static zza zzb() {
                return (zza) zzd.cl();
            }

            public static zza zzc(zzg zzgVar) {
                return (zza) zzd.ci(zzgVar);
            }

            public static zzg zzf() {
                return zzd;
            }

            public static zzg zzg(InputStream inputStream) throws IOException {
                return (zzg) zzgyx.br(zzd, inputStream);
            }

            public static zzg zzm(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
                return (zzg) zzgyx.bo(zzd, inputStream, zzgyhVar);
            }

            public static zzg zzn(zzgxp zzgxpVar) throws zzgzm {
                return (zzg) zzgyx.by(zzd, zzgxpVar);
            }

            public static zzg zzo(zzgxv zzgxvVar) throws IOException {
                return (zzg) zzgyx.ca(zzd, zzgxvVar);
            }

            public static zzg zzp(InputStream inputStream) throws IOException {
                return (zzg) zzgyx.ch(zzd, inputStream);
            }

            public static zzg zzq(ByteBuffer byteBuffer) throws zzgzm {
                return (zzg) zzgyx.bx(zzd, byteBuffer);
            }

            public static zzg zzr(byte[] bArr) throws zzgzm {
                return (zzg) zzgyx.cc(zzd, bArr);
            }

            public static zzg zzs(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
                return (zzg) zzgyx.bu(zzd, zzgxpVar, zzgyhVar);
            }

            public static zzg zzt(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
                return (zzg) zzgyx.bv(zzd, zzgxvVar, zzgyhVar);
            }

            public static zzg zzu(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
                return (zzg) zzgyx.bw(zzd, inputStream, zzgyhVar);
            }

            public static zzg zzv(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
                return (zzg) zzgyx.cf(zzd, byteBuffer, zzgyhVar);
            }

            public static zzg zzw(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
                return (zzg) zzgyx.bp(zzd, bArr, zzgyhVar);
            }

            public static zzhaq<zzg> zzx() {
                return zzd.zzbN();
            }

            @Override // com.google.android.gms.internal.ads.zzgyx
            public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
                zzhaq zzhaqVar;
                switch (zzgywVar.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return new cyk(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
                    case 3:
                        return new zzg();
                    case 4:
                        return new zza(zzd);
                    case 5:
                        return zzd;
                    case 6:
                        zzhaq<zzg> zzhaqVar2 = zze;
                        if (zzhaqVar2 != null) {
                            return zzhaqVar2;
                        }
                        synchronized (zzg.class) {
                            try {
                                zzhaqVar = zze;
                                if (zzhaqVar == null) {
                                    zzhaqVar = new zzgys(zzd);
                                    zze = zzhaqVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        return zzhaqVar;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
            public int zza() {
                return this.zzi;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
            public boolean zzh() {
                return this.zzg;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
            public boolean zzi() {
                return this.zzh;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
            public boolean zzj() {
                return (this.zzf & 1) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
            public boolean zzk() {
                return (this.zzf & 2) != 0;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzb.zzh
            public boolean zzl() {
                return (this.zzf & 4) != 0;
            }
        }

        public interface zzh extends zzhaj {
            int zza();

            boolean zzh();

            boolean zzi();

            boolean zzj();

            boolean zzk();

            boolean zzl();
        }

        static {
            zzb zzbVar = new zzb();
            zzb = zzbVar;
            zzgyx.cb(zzb.class, zzbVar);
        }

        public static void a(zzb zzbVar) {
            zzbVar.getClass();
            zzbVar.zzd = ahn.f10232c;
        }

        public static void d(zzb zzbVar, zza zzaVar) {
            zzbVar.getClass();
            zzaVar.getClass();
            zzbVar.i();
            zzbVar.zzd.add(zzaVar);
        }

        public static void e(zzb zzbVar, Iterable iterable) {
            zzbVar.i();
            zzgwy.bi(iterable, zzbVar.zzd);
        }

        public static void f(zzb zzbVar, int i, zza zzaVar) {
            zzbVar.getClass();
            zzaVar.getClass();
            zzbVar.i();
            zzbVar.zzd.set(i, zzaVar);
        }

        public static void g(zzb zzbVar, int i, zza zzaVar) {
            zzbVar.getClass();
            zzaVar.getClass();
            zzbVar.i();
            zzbVar.zzd.add(i, zzaVar);
        }

        public static void h(zzb zzbVar, int i) {
            zzbVar.i();
            zzbVar.zzd.remove(i);
        }

        public static zzc zzd() {
            return (zzc) zzb.cl();
        }

        public static zzc zzf(zzb zzbVar) {
            return (zzc) zzb.ci(zzbVar);
        }

        public static zzb zzh() {
            return zzb;
        }

        public static zzb zzi(InputStream inputStream) throws IOException {
            return (zzb) zzgyx.br(zzb, inputStream);
        }

        public static zzb zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzb) zzgyx.bo(zzb, inputStream, zzgyhVar);
        }

        public static zzb zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zzb) zzgyx.by(zzb, zzgxpVar);
        }

        public static zzb zzm(zzgxv zzgxvVar) throws IOException {
            return (zzb) zzgyx.ca(zzb, zzgxvVar);
        }

        public static zzb zzn(InputStream inputStream) throws IOException {
            return (zzb) zzgyx.ch(zzb, inputStream);
        }

        public static zzb zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzb) zzgyx.bx(zzb, byteBuffer);
        }

        public static zzb zzp(byte[] bArr) throws zzgzm {
            return (zzb) zzgyx.cc(zzb, bArr);
        }

        public static zzb zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzb) zzgyx.bu(zzb, zzgxpVar, zzgyhVar);
        }

        public static zzb zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzb) zzgyx.bv(zzb, zzgxvVar, zzgyhVar);
        }

        public static zzb zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzb) zzgyx.bw(zzb, inputStream, zzgyhVar);
        }

        public static zzb zzt(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzb) zzgyx.cf(zzb, byteBuffer, zzgyhVar);
        }

        public static zzb zzu(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzb) zzgyx.bp(zzb, bArr, zzgyhVar);
        }

        public static zzhaq<zzb> zzv() {
            return zzb.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zza.class});
                case 3:
                    return new zzb();
                case 4:
                    return new zzc(zzb);
                case 5:
                    return zzb;
                case 6:
                    zzhaq<zzb> zzhaqVar2 = zzc;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzb.class) {
                        try {
                            zzhaqVar = zzc;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzb);
                                zzc = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final void i() {
            zzgzj<zza> zzgzjVar = this.zzd;
            if (zzgzjVar.zzc()) {
                return;
            }
            this.zzd = zzgyx.bn(zzgzjVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzc
        public int zza() {
            return this.zzd.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzc
        public zza zzb(int i) {
            return this.zzd.get(i);
        }

        public InterfaceC0210zzb zzc(int i) {
            return this.zzd.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzc
        public List<zza> zzl() {
            return this.zzd;
        }

        public List<? extends InterfaceC0210zzb> zzw() {
            return this.zzd;
        }
    }

    public final class zzba extends zzgyx<zzba, zza> implements zzbb {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        private static final zzba zzf;
        private static volatile zzhaq<zzba> zzg;
        private int zzh;
        private int zzi = 1000;
        private zzaw zzj;
        private int zzk;
        private int zzl;
        private int zzm;

        public final class zza extends zzgyr<zzba, zza> implements zzbb {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public int zza() {
                return ((zzba) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public int zzb() {
                return ((zzba) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public int zzc() {
                return ((zzba) this.f8682e).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public zzq zzd() {
                return ((zzba) this.f8682e).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public zzaw zze() {
                return ((zzba) this.f8682e).zze();
            }

            public zza zzf() {
                f();
                zzba.a((zzba) this.f8682e);
                return this;
            }

            public zza zzg() {
                f();
                zzba.m((zzba) this.f8682e);
                return this;
            }

            public zza zzh() {
                f();
                zzba.h((zzba) this.f8682e);
                return this;
            }

            public zza zzi() {
                f();
                zzba.g((zzba) this.f8682e);
                return this;
            }

            public zza zzj() {
                f();
                zzba.b((zzba) this.f8682e);
                return this;
            }

            public zza zzk(zzaw zzawVar) {
                f();
                zzba.f((zzba) this.f8682e, zzawVar);
                return this;
            }

            public zza zzl(zzaw.zza zzaVar) {
                f();
                zzba.e((zzba) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzm(zzaw zzawVar) {
                f();
                zzba.e((zzba) this.f8682e, zzawVar);
                return this;
            }

            public zza zzn(zzq zzqVar) {
                f();
                zzba.k((zzba) this.f8682e, zzqVar);
                return this;
            }

            public zza zzo(int i) {
                f();
                zzba.j((zzba) this.f8682e, i);
                return this;
            }

            public zza zzp(int i) {
                f();
                zzba.d((zzba) this.f8682e, i);
                return this;
            }

            public zza zzq(int i) {
                f();
                zzba.i((zzba) this.f8682e, i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public boolean zzr() {
                return ((zzba) this.f8682e).zzr();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public boolean zzs() {
                return ((zzba) this.f8682e).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public boolean zzt() {
                return ((zzba) this.f8682e).zzt();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public boolean zzu() {
                return ((zzba) this.f8682e).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
            public boolean zzv() {
                return ((zzba) this.f8682e).zzv();
            }
        }

        static {
            zzba zzbaVar = new zzba();
            zzf = zzbaVar;
            zzgyx.cb(zzba.class, zzbaVar);
        }

        public static void a(zzba zzbaVar) {
            zzbaVar.zzj = null;
            zzbaVar.zzh &= -3;
        }

        public static void b(zzba zzbaVar) {
            zzbaVar.zzh &= -9;
            zzbaVar.zzl = 0;
        }

        public static void d(zzba zzbaVar, int i) {
            zzbaVar.zzh |= 4;
            zzbaVar.zzk = i;
        }

        public static void e(zzba zzbaVar, zzaw zzawVar) {
            zzbaVar.getClass();
            zzawVar.getClass();
            zzbaVar.zzj = zzawVar;
            zzbaVar.zzh |= 2;
        }

        public static void f(zzba zzbaVar, zzaw zzawVar) {
            zzbaVar.getClass();
            zzawVar.getClass();
            zzaw zzawVar2 = zzbaVar.zzj;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            zzbaVar.zzj = zzawVar;
            zzbaVar.zzh |= 2;
        }

        public static void g(zzba zzbaVar) {
            zzbaVar.zzh &= -5;
            zzbaVar.zzk = 0;
        }

        public static void h(zzba zzbaVar) {
            zzbaVar.zzh &= -17;
            zzbaVar.zzm = 0;
        }

        public static void i(zzba zzbaVar, int i) {
            zzbaVar.zzh |= 8;
            zzbaVar.zzl = i;
        }

        public static void j(zzba zzbaVar, int i) {
            zzbaVar.zzh |= 16;
            zzbaVar.zzm = i;
        }

        public static void k(zzba zzbaVar, zzq zzqVar) {
            zzbaVar.getClass();
            zzbaVar.zzi = zzqVar.zza();
            zzbaVar.zzh |= 1;
        }

        public static void m(zzba zzbaVar) {
            zzbaVar.zzh &= -2;
            zzbaVar.zzi = 1000;
        }

        public static zzhaq<zzba> zzA() {
            return zzf.zzbN();
        }

        public static zza zzf() {
            return (zza) zzf.cl();
        }

        public static zza zzg(zzba zzbaVar) {
            return (zza) zzf.ci(zzbaVar);
        }

        public static zzba zzi() {
            return zzf;
        }

        public static zzba zzj(InputStream inputStream) throws IOException {
            return (zzba) zzgyx.br(zzf, inputStream);
        }

        public static zzba zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzba) zzgyx.bo(zzf, inputStream, zzgyhVar);
        }

        public static zzba zzl(zzgxp zzgxpVar) throws zzgzm {
            return (zzba) zzgyx.by(zzf, zzgxpVar);
        }

        public static zzba zzm(zzgxv zzgxvVar) throws IOException {
            return (zzba) zzgyx.ca(zzf, zzgxvVar);
        }

        public static zzba zzn(InputStream inputStream) throws IOException {
            return (zzba) zzgyx.ch(zzf, inputStream);
        }

        public static zzba zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzba) zzgyx.bx(zzf, byteBuffer);
        }

        public static zzba zzp(byte[] bArr) throws zzgzm {
            return (zzba) zzgyx.cc(zzf, bArr);
        }

        public static zzba zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzba) zzgyx.bu(zzf, zzgxpVar, zzgyhVar);
        }

        public static zzba zzw(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzba) zzgyx.bv(zzf, zzgxvVar, zzgyhVar);
        }

        public static zzba zzx(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzba) zzgyx.bw(zzf, inputStream, zzgyhVar);
        }

        public static zzba zzy(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzba) zzgyx.cf(zzf, byteBuffer, zzgyhVar);
        }

        public static zzba zzz(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzba) zzgyx.bp(zzf, bArr, zzgyhVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzf, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzh", "zzi", zzq.zze(), "zzj", "zzk", "zzl", "zzm"});
                case 3:
                    return new zzba();
                case 4:
                    return new zza(zzf);
                case 5:
                    return zzf;
                case 6:
                    zzhaq<zzba> zzhaqVar2 = zzg;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzba.class) {
                        try {
                            zzhaqVar = zzg;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzf);
                                zzg = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public int zza() {
            return this.zzm;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public int zzb() {
            return this.zzk;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public int zzc() {
            return this.zzl;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public zzq zzd() {
            zzq zzb2 = zzq.zzb(this.zzi);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public zzaw zze() {
            zzaw zzawVar = this.zzj;
            return zzawVar == null ? zzaw.zzg() : zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public boolean zzr() {
            return (this.zzh & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public boolean zzs() {
            return (this.zzh & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public boolean zzt() {
            return (this.zzh & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public boolean zzu() {
            return (this.zzh & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbb
        public boolean zzv() {
            return (this.zzh & 8) != 0;
        }
    }

    public interface zzbb extends zzhaj {
        int zza();

        int zzb();

        int zzc();

        zzq zzd();

        zzaw zze();

        boolean zzr();

        boolean zzs();

        boolean zzt();

        boolean zzu();

        boolean zzv();
    }

    public final class zzbc extends zzgyx<zzbc, zza> implements zzbd {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzbc zzd;
        private static volatile zzhaq<zzbc> zze;
        private int zzf;
        private int zzg = 1000;
        private zzaw zzh;
        private zzap zzi;

        public final class zza extends zzgyr<zzbc, zza> implements zzbd {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
            public zzq zza() {
                return ((zzbc) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
            public zzap zzb() {
                return ((zzbc) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
            public zzaw zzc() {
                return ((zzbc) this.f8682e).zzc();
            }

            public zza zzd() {
                f();
                zzbc.i((zzbc) this.f8682e);
                return this;
            }

            public zza zze() {
                f();
                zzbc.h((zzbc) this.f8682e);
                return this;
            }

            public zza zzf() {
                f();
                zzbc.a((zzbc) this.f8682e);
                return this;
            }

            public zza zzg(zzaw zzawVar) {
                f();
                zzbc.j((zzbc) this.f8682e, zzawVar);
                return this;
            }

            public zza zzh(zzap zzapVar) {
                f();
                zzbc.g((zzbc) this.f8682e, zzapVar);
                return this;
            }

            public zza zzi(zzaw.zza zzaVar) {
                f();
                zzbc.f((zzbc) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzj(zzaw zzawVar) {
                f();
                zzbc.f((zzbc) this.f8682e, zzawVar);
                return this;
            }

            public zza zzk(zzap.zza zzaVar) {
                f();
                zzbc.b((zzbc) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzl(zzap zzapVar) {
                f();
                zzbc.b((zzbc) this.f8682e, zzapVar);
                return this;
            }

            public zza zzm(zzq zzqVar) {
                f();
                zzbc.e((zzbc) this.f8682e, zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
            public boolean zzn() {
                return ((zzbc) this.f8682e).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
            public boolean zzo() {
                return ((zzbc) this.f8682e).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
            public boolean zzp() {
                return ((zzbc) this.f8682e).zzp();
            }
        }

        static {
            zzbc zzbcVar = new zzbc();
            zzd = zzbcVar;
            zzgyx.cb(zzbc.class, zzbcVar);
        }

        public static void a(zzbc zzbcVar) {
            zzbcVar.zzf &= -2;
            zzbcVar.zzg = 1000;
        }

        public static void b(zzbc zzbcVar, zzap zzapVar) {
            zzbcVar.getClass();
            zzapVar.getClass();
            zzbcVar.zzi = zzapVar;
            zzbcVar.zzf |= 4;
        }

        public static void e(zzbc zzbcVar, zzq zzqVar) {
            zzbcVar.getClass();
            zzbcVar.zzg = zzqVar.zza();
            zzbcVar.zzf |= 1;
        }

        public static void f(zzbc zzbcVar, zzaw zzawVar) {
            zzbcVar.getClass();
            zzawVar.getClass();
            zzbcVar.zzh = zzawVar;
            zzbcVar.zzf |= 2;
        }

        public static void g(zzbc zzbcVar, zzap zzapVar) {
            zzbcVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzbcVar.zzi;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzbcVar.zzi = zzapVar;
            zzbcVar.zzf |= 4;
        }

        public static void h(zzbc zzbcVar) {
            zzbcVar.zzi = null;
            zzbcVar.zzf &= -5;
        }

        public static void i(zzbc zzbcVar) {
            zzbcVar.zzh = null;
            zzbcVar.zzf &= -3;
        }

        public static void j(zzbc zzbcVar, zzaw zzawVar) {
            zzbcVar.getClass();
            zzawVar.getClass();
            zzaw zzawVar2 = zzbcVar.zzh;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            zzbcVar.zzh = zzawVar;
            zzbcVar.zzf |= 2;
        }

        public static zza zzd() {
            return (zza) zzd.cl();
        }

        public static zza zzf(zzbc zzbcVar) {
            return (zza) zzd.ci(zzbcVar);
        }

        public static zzbc zzh() {
            return zzd;
        }

        public static zzbc zzi(InputStream inputStream) throws IOException {
            return (zzbc) zzgyx.br(zzd, inputStream);
        }

        public static zzbc zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbc) zzgyx.bo(zzd, inputStream, zzgyhVar);
        }

        public static zzbc zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zzbc) zzgyx.by(zzd, zzgxpVar);
        }

        public static zzbc zzl(zzgxv zzgxvVar) throws IOException {
            return (zzbc) zzgyx.ca(zzd, zzgxvVar);
        }

        public static zzbc zzm(InputStream inputStream) throws IOException {
            return (zzbc) zzgyx.ch(zzd, inputStream);
        }

        public static zzbc zzq(ByteBuffer byteBuffer) throws zzgzm {
            return (zzbc) zzgyx.bx(zzd, byteBuffer);
        }

        public static zzbc zzr(byte[] bArr) throws zzgzm {
            return (zzbc) zzgyx.cc(zzd, bArr);
        }

        public static zzbc zzs(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzbc) zzgyx.bu(zzd, zzgxpVar, zzgyhVar);
        }

        public static zzbc zzt(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzbc) zzgyx.bv(zzd, zzgxvVar, zzgyhVar);
        }

        public static zzbc zzu(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbc) zzgyx.bw(zzd, inputStream, zzgyhVar);
        }

        public static zzbc zzv(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzbc) zzgyx.cf(zzd, byteBuffer, zzgyhVar);
        }

        public static zzbc zzw(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzbc) zzgyx.bp(zzd, bArr, zzgyhVar);
        }

        public static zzhaq<zzbc> zzx() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzq.zze(), "zzh", "zzi"});
                case 3:
                    return new zzbc();
                case 4:
                    return new zza(zzd);
                case 5:
                    return zzd;
                case 6:
                    zzhaq<zzbc> zzhaqVar2 = zze;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzbc.class) {
                        try {
                            zzhaqVar = zze;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzd);
                                zze = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzg);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
        public zzap zzb() {
            zzap zzapVar = this.zzi;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
        public zzaw zzc() {
            zzaw zzawVar = this.zzh;
            return zzawVar == null ? zzaw.zzg() : zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
        public boolean zzn() {
            return (this.zzf & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
        public boolean zzo() {
            return (this.zzf & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbd
        public boolean zzp() {
            return (this.zzf & 1) != 0;
        }
    }

    public interface zzbd extends zzhaj {
        zzq zza();

        zzap zzb();

        zzaw zzc();

        boolean zzn();

        boolean zzo();

        boolean zzp();
    }

    public final class zzbe extends zzgyx<zzbe, zza> implements zzbf {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        private static final zzbe zzg;
        private static volatile zzhaq<zzbe> zzh;
        private int zzi;
        private int zzj = 1000;
        private zzaw zzk;
        private int zzl;
        private int zzm;
        private int zzn;
        private long zzo;

        public final class zza extends zzgyr<zzbe, zza> implements zzbf {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public int zza() {
                return ((zzbe) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public int zzb() {
                return ((zzbe) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public int zzc() {
                return ((zzbe) this.f8682e).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public long zzd() {
                return ((zzbe) this.f8682e).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public zzq zze() {
                return ((zzbe) this.f8682e).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public zzaw zzf() {
                return ((zzbe) this.f8682e).zzf();
            }

            public zza zzg() {
                f();
                zzbe.a((zzbe) this.f8682e);
                return this;
            }

            public zza zzh() {
                f();
                zzbe.o((zzbe) this.f8682e);
                return this;
            }

            public zza zzi() {
                f();
                zzbe.i((zzbe) this.f8682e);
                return this;
            }

            public zza zzj() {
                f();
                zzbe.h((zzbe) this.f8682e);
                return this;
            }

            public zza zzk() {
                f();
                zzbe.b((zzbe) this.f8682e);
                return this;
            }

            public zza zzl() {
                f();
                zzbe.g((zzbe) this.f8682e);
                return this;
            }

            public zza zzm(zzaw zzawVar) {
                f();
                zzbe.e((zzbe) this.f8682e, zzawVar);
                return this;
            }

            public zza zzn(long j) {
                f();
                zzbe.m((zzbe) this.f8682e, j);
                return this;
            }

            public zza zzo(zzaw.zza zzaVar) {
                f();
                zzbe.k((zzbe) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzp(zzaw zzawVar) {
                f();
                zzbe.k((zzbe) this.f8682e, zzawVar);
                return this;
            }

            public zza zzq(zzq zzqVar) {
                f();
                zzbe.d((zzbe) this.f8682e, zzqVar);
                return this;
            }

            public zza zzr(int i) {
                f();
                zzbe.j((zzbe) this.f8682e, i);
                return this;
            }

            public zza zzs(int i) {
                f();
                zzbe.n((zzbe) this.f8682e, i);
                return this;
            }

            public zza zzt(int i) {
                f();
                zzbe.l((zzbe) this.f8682e, i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public boolean zzu() {
                return ((zzbe) this.f8682e).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public boolean zzv() {
                return ((zzbe) this.f8682e).zzv();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public boolean zzw() {
                return ((zzbe) this.f8682e).zzw();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public boolean zzx() {
                return ((zzbe) this.f8682e).zzx();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public boolean zzy() {
                return ((zzbe) this.f8682e).zzy();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
            public boolean zzz() {
                return ((zzbe) this.f8682e).zzz();
            }
        }

        static {
            zzbe zzbeVar = new zzbe();
            zzg = zzbeVar;
            zzgyx.cb(zzbe.class, zzbeVar);
        }

        public static void a(zzbe zzbeVar) {
            zzbeVar.zzi &= -33;
            zzbeVar.zzo = 0L;
        }

        public static void b(zzbe zzbeVar) {
            zzbeVar.zzi &= -5;
            zzbeVar.zzl = 0;
        }

        public static void d(zzbe zzbeVar, zzq zzqVar) {
            zzbeVar.getClass();
            zzbeVar.zzj = zzqVar.zza();
            zzbeVar.zzi |= 1;
        }

        public static void e(zzbe zzbeVar, zzaw zzawVar) {
            zzbeVar.getClass();
            zzawVar.getClass();
            zzaw zzawVar2 = zzbeVar.zzk;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            zzbeVar.zzk = zzawVar;
            zzbeVar.zzi |= 2;
        }

        public static void g(zzbe zzbeVar) {
            zzbeVar.zzi &= -9;
            zzbeVar.zzm = 0;
        }

        public static void h(zzbe zzbeVar) {
            zzbeVar.zzi &= -17;
            zzbeVar.zzn = 0;
        }

        public static void i(zzbe zzbeVar) {
            zzbeVar.zzi &= -2;
            zzbeVar.zzj = 1000;
        }

        public static void j(zzbe zzbeVar, int i) {
            zzbeVar.zzi |= 16;
            zzbeVar.zzn = i;
        }

        public static void k(zzbe zzbeVar, zzaw zzawVar) {
            zzbeVar.getClass();
            zzawVar.getClass();
            zzbeVar.zzk = zzawVar;
            zzbeVar.zzi |= 2;
        }

        public static void l(zzbe zzbeVar, int i) {
            zzbeVar.zzi |= 8;
            zzbeVar.zzm = i;
        }

        public static void m(zzbe zzbeVar, long j) {
            zzbeVar.zzi |= 32;
            zzbeVar.zzo = j;
        }

        public static void n(zzbe zzbeVar, int i) {
            zzbeVar.zzi |= 4;
            zzbeVar.zzl = i;
        }

        public static void o(zzbe zzbeVar) {
            zzbeVar.zzk = null;
            zzbeVar.zzi &= -3;
        }

        public static zzbe zzA(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzbe) zzgyx.cf(zzg, byteBuffer, zzgyhVar);
        }

        public static zzbe zzB(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzbe) zzgyx.bp(zzg, bArr, zzgyhVar);
        }

        public static zzhaq<zzbe> zzC() {
            return zzg.zzbN();
        }

        public static zza zzg() {
            return (zza) zzg.cl();
        }

        public static zza zzh(zzbe zzbeVar) {
            return (zza) zzg.ci(zzbeVar);
        }

        public static zzbe zzj() {
            return zzg;
        }

        public static zzbe zzk(InputStream inputStream) throws IOException {
            return (zzbe) zzgyx.br(zzg, inputStream);
        }

        public static zzbe zzl(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbe) zzgyx.bo(zzg, inputStream, zzgyhVar);
        }

        public static zzbe zzm(zzgxp zzgxpVar) throws zzgzm {
            return (zzbe) zzgyx.by(zzg, zzgxpVar);
        }

        public static zzbe zzn(zzgxv zzgxvVar) throws IOException {
            return (zzbe) zzgyx.ca(zzg, zzgxvVar);
        }

        public static zzbe zzo(InputStream inputStream) throws IOException {
            return (zzbe) zzgyx.ch(zzg, inputStream);
        }

        public static zzbe zzp(ByteBuffer byteBuffer) throws zzgzm {
            return (zzbe) zzgyx.bx(zzg, byteBuffer);
        }

        public static zzbe zzq(byte[] bArr) throws zzgzm {
            return (zzbe) zzgyx.cc(zzg, bArr);
        }

        public static zzbe zzr(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzbe) zzgyx.bu(zzg, zzgxpVar, zzgyhVar);
        }

        public static zzbe zzs(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzbe) zzgyx.bv(zzg, zzgxvVar, zzgyhVar);
        }

        public static zzbe zzt(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbe) zzgyx.bw(zzg, inputStream, zzgyhVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzg, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzi", "zzj", zzq.zze(), "zzk", "zzl", "zzm", "zzn", "zzo"});
                case 3:
                    return new zzbe();
                case 4:
                    return new zza(zzg);
                case 5:
                    return zzg;
                case 6:
                    zzhaq<zzbe> zzhaqVar2 = zzh;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzbe.class) {
                        try {
                            zzhaqVar = zzh;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzg);
                                zzh = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public int zza() {
            return this.zzn;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public int zzb() {
            return this.zzl;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public int zzc() {
            return this.zzm;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public long zzd() {
            return this.zzo;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public zzq zze() {
            zzq zzb2 = zzq.zzb(this.zzj);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public zzaw zzf() {
            zzaw zzawVar = this.zzk;
            return zzawVar == null ? zzaw.zzg() : zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public boolean zzu() {
            return (this.zzi & 32) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public boolean zzv() {
            return (this.zzi & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public boolean zzw() {
            return (this.zzi & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public boolean zzx() {
            return (this.zzi & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public boolean zzy() {
            return (this.zzi & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbf
        public boolean zzz() {
            return (this.zzi & 8) != 0;
        }
    }

    public interface zzbf extends zzhaj {
        int zza();

        int zzb();

        int zzc();

        long zzd();

        zzq zze();

        zzaw zzf();

        boolean zzu();

        boolean zzv();

        boolean zzw();

        boolean zzx();

        boolean zzy();

        boolean zzz();
    }

    public final class zzbg extends zzgyx<zzbg, zza> implements zzbh {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzbg zzd;
        private static volatile zzhaq<zzbg> zze;
        private int zzf;
        private int zzg = 1000;
        private zzaw zzh;
        private zzap zzi;

        public final class zza extends zzgyr<zzbg, zza> implements zzbh {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
            public zzq zza() {
                return ((zzbg) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
            public zzap zzb() {
                return ((zzbg) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
            public zzaw zzc() {
                return ((zzbg) this.f8682e).zzc();
            }

            public zza zzd() {
                f();
                zzbg.i((zzbg) this.f8682e);
                return this;
            }

            public zza zze() {
                f();
                zzbg.h((zzbg) this.f8682e);
                return this;
            }

            public zza zzf() {
                f();
                zzbg.a((zzbg) this.f8682e);
                return this;
            }

            public zza zzg(zzaw zzawVar) {
                f();
                zzbg.j((zzbg) this.f8682e, zzawVar);
                return this;
            }

            public zza zzh(zzap zzapVar) {
                f();
                zzbg.g((zzbg) this.f8682e, zzapVar);
                return this;
            }

            public zza zzi(zzaw.zza zzaVar) {
                f();
                zzbg.f((zzbg) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzj(zzaw zzawVar) {
                f();
                zzbg.f((zzbg) this.f8682e, zzawVar);
                return this;
            }

            public zza zzk(zzap.zza zzaVar) {
                f();
                zzbg.b((zzbg) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzl(zzap zzapVar) {
                f();
                zzbg.b((zzbg) this.f8682e, zzapVar);
                return this;
            }

            public zza zzm(zzq zzqVar) {
                f();
                zzbg.e((zzbg) this.f8682e, zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
            public boolean zzn() {
                return ((zzbg) this.f8682e).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
            public boolean zzo() {
                return ((zzbg) this.f8682e).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
            public boolean zzp() {
                return ((zzbg) this.f8682e).zzp();
            }
        }

        static {
            zzbg zzbgVar = new zzbg();
            zzd = zzbgVar;
            zzgyx.cb(zzbg.class, zzbgVar);
        }

        public static void a(zzbg zzbgVar) {
            zzbgVar.zzf &= -2;
            zzbgVar.zzg = 1000;
        }

        public static void b(zzbg zzbgVar, zzap zzapVar) {
            zzbgVar.getClass();
            zzapVar.getClass();
            zzbgVar.zzi = zzapVar;
            zzbgVar.zzf |= 4;
        }

        public static void e(zzbg zzbgVar, zzq zzqVar) {
            zzbgVar.getClass();
            zzbgVar.zzg = zzqVar.zza();
            zzbgVar.zzf |= 1;
        }

        public static void f(zzbg zzbgVar, zzaw zzawVar) {
            zzbgVar.getClass();
            zzawVar.getClass();
            zzbgVar.zzh = zzawVar;
            zzbgVar.zzf |= 2;
        }

        public static void g(zzbg zzbgVar, zzap zzapVar) {
            zzbgVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzbgVar.zzi;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzbgVar.zzi = zzapVar;
            zzbgVar.zzf |= 4;
        }

        public static void h(zzbg zzbgVar) {
            zzbgVar.zzi = null;
            zzbgVar.zzf &= -5;
        }

        public static void i(zzbg zzbgVar) {
            zzbgVar.zzh = null;
            zzbgVar.zzf &= -3;
        }

        public static void j(zzbg zzbgVar, zzaw zzawVar) {
            zzbgVar.getClass();
            zzawVar.getClass();
            zzaw zzawVar2 = zzbgVar.zzh;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            zzbgVar.zzh = zzawVar;
            zzbgVar.zzf |= 2;
        }

        public static zza zzd() {
            return (zza) zzd.cl();
        }

        public static zza zzf(zzbg zzbgVar) {
            return (zza) zzd.ci(zzbgVar);
        }

        public static zzbg zzh() {
            return zzd;
        }

        public static zzbg zzi(InputStream inputStream) throws IOException {
            return (zzbg) zzgyx.br(zzd, inputStream);
        }

        public static zzbg zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbg) zzgyx.bo(zzd, inputStream, zzgyhVar);
        }

        public static zzbg zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zzbg) zzgyx.by(zzd, zzgxpVar);
        }

        public static zzbg zzl(zzgxv zzgxvVar) throws IOException {
            return (zzbg) zzgyx.ca(zzd, zzgxvVar);
        }

        public static zzbg zzm(InputStream inputStream) throws IOException {
            return (zzbg) zzgyx.ch(zzd, inputStream);
        }

        public static zzbg zzq(ByteBuffer byteBuffer) throws zzgzm {
            return (zzbg) zzgyx.bx(zzd, byteBuffer);
        }

        public static zzbg zzr(byte[] bArr) throws zzgzm {
            return (zzbg) zzgyx.cc(zzd, bArr);
        }

        public static zzbg zzs(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzbg) zzgyx.bu(zzd, zzgxpVar, zzgyhVar);
        }

        public static zzbg zzt(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzbg) zzgyx.bv(zzd, zzgxvVar, zzgyhVar);
        }

        public static zzbg zzu(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbg) zzgyx.bw(zzd, inputStream, zzgyhVar);
        }

        public static zzbg zzv(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzbg) zzgyx.cf(zzd, byteBuffer, zzgyhVar);
        }

        public static zzbg zzw(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzbg) zzgyx.bp(zzd, bArr, zzgyhVar);
        }

        public static zzhaq<zzbg> zzx() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzq.zze(), "zzh", "zzi"});
                case 3:
                    return new zzbg();
                case 4:
                    return new zza(zzd);
                case 5:
                    return zzd;
                case 6:
                    zzhaq<zzbg> zzhaqVar2 = zze;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzbg.class) {
                        try {
                            zzhaqVar = zze;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzd);
                                zze = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzg);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
        public zzap zzb() {
            zzap zzapVar = this.zzi;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
        public zzaw zzc() {
            zzaw zzawVar = this.zzh;
            return zzawVar == null ? zzaw.zzg() : zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
        public boolean zzn() {
            return (this.zzf & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
        public boolean zzo() {
            return (this.zzf & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbh
        public boolean zzp() {
            return (this.zzf & 1) != 0;
        }
    }

    public interface zzbh extends zzhaj {
        zzq zza();

        zzap zzb();

        zzaw zzc();

        boolean zzn();

        boolean zzo();

        boolean zzp();
    }

    public interface zzbi extends zzhaj {
        int zza();

        boolean zzaA();

        boolean zzaB();

        zzau zzaf();

        zzay zzag();

        zzba zzah();

        zzbc zzai();

        zzbe zzaj();

        zzbg zzak();

        zzbj zzal();

        boolean zzam();

        boolean zzan();

        boolean zzao();

        boolean zzap();

        boolean zzaq();

        boolean zzar();

        boolean zzas();

        boolean zzat();

        boolean zzau();

        boolean zzav();

        boolean zzaw();

        boolean zzax();

        boolean zzay();

        boolean zzaz();

        int zzb();

        int zzc();

        int zzd();

        int zze();

        int zzf();

        int zzg();

        long zzh();

        zzap zzi();
    }

    public final class zzbj extends zzgyx<zzbj, zza> implements zzbk {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzbj zzc;
        private static volatile zzhaq<zzbj> zzd;
        private int zze;
        private int zzf = 1000;
        private zzaw zzg;

        public final class zza extends zzgyr<zzbj, zza> implements zzbk {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzbk
            public zzq zza() {
                return ((zzbj) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbk
            public zzaw zzb() {
                return ((zzbj) this.f8682e).zzb();
            }

            public zza zzc() {
                f();
                zzbj.f((zzbj) this.f8682e);
                return this;
            }

            public zza zzd() {
                f();
                zzbj.e((zzbj) this.f8682e);
                return this;
            }

            public zza zze(zzaw zzawVar) {
                f();
                zzbj.b((zzbj) this.f8682e, zzawVar);
                return this;
            }

            public zza zzf(zzaw.zza zzaVar) {
                f();
                zzbj.d((zzbj) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzg(zzaw zzawVar) {
                f();
                zzbj.d((zzbj) this.f8682e, zzawVar);
                return this;
            }

            public zza zzh(zzq zzqVar) {
                f();
                zzbj.a((zzbj) this.f8682e, zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbk
            public boolean zzi() {
                return ((zzbj) this.f8682e).zzi();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbk
            public boolean zzj() {
                return ((zzbj) this.f8682e).zzj();
            }
        }

        static {
            zzbj zzbjVar = new zzbj();
            zzc = zzbjVar;
            zzgyx.cb(zzbj.class, zzbjVar);
        }

        public static void a(zzbj zzbjVar, zzq zzqVar) {
            zzbjVar.getClass();
            zzbjVar.zzf = zzqVar.zza();
            zzbjVar.zze |= 1;
        }

        public static void b(zzbj zzbjVar, zzaw zzawVar) {
            zzbjVar.getClass();
            zzawVar.getClass();
            zzaw zzawVar2 = zzbjVar.zzg;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            zzbjVar.zzg = zzawVar;
            zzbjVar.zze |= 2;
        }

        public static void d(zzbj zzbjVar, zzaw zzawVar) {
            zzbjVar.getClass();
            zzawVar.getClass();
            zzbjVar.zzg = zzawVar;
            zzbjVar.zze |= 2;
        }

        public static void e(zzbj zzbjVar) {
            zzbjVar.zze &= -2;
            zzbjVar.zzf = 1000;
        }

        public static void f(zzbj zzbjVar) {
            zzbjVar.zzg = null;
            zzbjVar.zze &= -3;
        }

        public static zza zzc() {
            return (zza) zzc.cl();
        }

        public static zza zzd(zzbj zzbjVar) {
            return (zza) zzc.ci(zzbjVar);
        }

        public static zzbj zzg() {
            return zzc;
        }

        public static zzbj zzh(InputStream inputStream) throws IOException {
            return (zzbj) zzgyx.br(zzc, inputStream);
        }

        public static zzbj zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbj) zzgyx.bo(zzc, inputStream, zzgyhVar);
        }

        public static zzbj zzl(zzgxp zzgxpVar) throws zzgzm {
            return (zzbj) zzgyx.by(zzc, zzgxpVar);
        }

        public static zzbj zzm(zzgxv zzgxvVar) throws IOException {
            return (zzbj) zzgyx.ca(zzc, zzgxvVar);
        }

        public static zzbj zzn(InputStream inputStream) throws IOException {
            return (zzbj) zzgyx.ch(zzc, inputStream);
        }

        public static zzbj zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzbj) zzgyx.bx(zzc, byteBuffer);
        }

        public static zzbj zzp(byte[] bArr) throws zzgzm {
            return (zzbj) zzgyx.cc(zzc, bArr);
        }

        public static zzbj zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzbj) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
        }

        public static zzbj zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzbj) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
        }

        public static zzbj zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbj) zzgyx.bw(zzc, inputStream, zzgyhVar);
        }

        public static zzbj zzt(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzbj) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
        }

        public static zzbj zzu(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzbj) zzgyx.bp(zzc, bArr, zzgyhVar);
        }

        public static zzhaq<zzbj> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", zzq.zze(), "zzg"});
                case 3:
                    return new zzbj();
                case 4:
                    return new zza(zzc);
                case 5:
                    return zzc;
                case 6:
                    zzhaq<zzbj> zzhaqVar2 = zzd;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzbj.class) {
                        try {
                            zzhaqVar = zzd;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzc);
                                zzd = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbk
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzf);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbk
        public zzaw zzb() {
            zzaw zzawVar = this.zzg;
            return zzawVar == null ? zzaw.zzg() : zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbk
        public boolean zzi() {
            return (this.zze & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbk
        public boolean zzj() {
            return (this.zze & 1) != 0;
        }
    }

    public interface zzbk extends zzhaj {
        zzq zza();

        zzaw zzb();

        boolean zzi();

        boolean zzj();
    }

    public final class zzbl extends zzgyx<zzbl, zza> implements zzbm {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzbl zzc;
        private static volatile zzhaq<zzbl> zzd;
        private int zze;
        private boolean zzf;
        private int zzg;

        public final class zza extends zzgyr<zzbl, zza> implements zzbm {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzbm
            public int zza() {
                return ((zzbl) this.f8682e).zza();
            }

            public zza zzb() {
                f();
                zzbl.f((zzbl) this.f8682e);
                return this;
            }

            public zza zzc() {
                f();
                zzbl.e((zzbl) this.f8682e);
                return this;
            }

            public zza zzd(boolean z) {
                f();
                zzbl.d((zzbl) this.f8682e, z);
                return this;
            }

            public zza zze(int i) {
                f();
                zzbl.b((zzbl) this.f8682e, i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbm
            public boolean zzf() {
                return ((zzbl) this.f8682e).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbm
            public boolean zzg() {
                return ((zzbl) this.f8682e).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzbm
            public boolean zzh() {
                return ((zzbl) this.f8682e).zzh();
            }
        }

        static {
            zzbl zzblVar = new zzbl();
            zzc = zzblVar;
            zzgyx.cb(zzbl.class, zzblVar);
        }

        public static void b(zzbl zzblVar, int i) {
            zzblVar.zze |= 2;
            zzblVar.zzg = i;
        }

        public static void d(zzbl zzblVar, boolean z) {
            zzblVar.zze |= 1;
            zzblVar.zzf = z;
        }

        public static void e(zzbl zzblVar) {
            zzblVar.zze &= -3;
            zzblVar.zzg = 0;
        }

        public static void f(zzbl zzblVar) {
            zzblVar.zze &= -2;
            zzblVar.zzf = false;
        }

        public static zza zzb() {
            return (zza) zzc.cl();
        }

        public static zza zzc(zzbl zzblVar) {
            return (zza) zzc.ci(zzblVar);
        }

        public static zzbl zzi() {
            return zzc;
        }

        public static zzbl zzj(InputStream inputStream) throws IOException {
            return (zzbl) zzgyx.br(zzc, inputStream);
        }

        public static zzbl zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbl) zzgyx.bo(zzc, inputStream, zzgyhVar);
        }

        public static zzbl zzl(zzgxp zzgxpVar) throws zzgzm {
            return (zzbl) zzgyx.by(zzc, zzgxpVar);
        }

        public static zzbl zzm(zzgxv zzgxvVar) throws IOException {
            return (zzbl) zzgyx.ca(zzc, zzgxvVar);
        }

        public static zzbl zzn(InputStream inputStream) throws IOException {
            return (zzbl) zzgyx.ch(zzc, inputStream);
        }

        public static zzbl zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzbl) zzgyx.bx(zzc, byteBuffer);
        }

        public static zzbl zzp(byte[] bArr) throws zzgzm {
            return (zzbl) zzgyx.cc(zzc, bArr);
        }

        public static zzbl zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzbl) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
        }

        public static zzbl zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzbl) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
        }

        public static zzbl zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzbl) zzgyx.bw(zzc, inputStream, zzgyhVar);
        }

        public static zzbl zzt(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzbl) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
        }

        public static zzbl zzu(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzbl) zzgyx.bp(zzc, bArr, zzgyhVar);
        }

        public static zzhaq<zzbl> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
                case 3:
                    return new zzbl();
                case 4:
                    return new zza(zzc);
                case 5:
                    return zzc;
                case 6:
                    zzhaq<zzbl> zzhaqVar2 = zzd;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzbl.class) {
                        try {
                            zzhaqVar = zzd;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzc);
                                zzd = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbm
        public int zza() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbm
        public boolean zzf() {
            return this.zzf;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbm
        public boolean zzg() {
            return (this.zze & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzbm
        public boolean zzh() {
            return (this.zze & 2) != 0;
        }
    }

    public interface zzbm extends zzhaj {
        int zza();

        boolean zzf();

        boolean zzg();

        boolean zzh();
    }

    public interface zzc extends zzhaj {
        int zza();

        zzb.zza zzb(int i);

        List<zzb.zza> zzl();
    }

    public final class zzd extends zzgyx<zzd, zzb> implements zze {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzd zzc;
        private static volatile zzhaq<zzd> zzd;
        private int zze;
        private int zzf;
        private zzal zzg;

        public enum zza implements zzgzb {
            AD_FORMAT_TYPE_UNSPECIFIED(0),
            BANNER(1),
            INTERSTITIAL(2),
            NATIVE_EXPRESS(3),
            NATIVE_CONTENT(4),
            NATIVE_APP_INSTALL(5),
            NATIVE_CUSTOM_TEMPLATE(6),
            DFP_BANNER(7),
            DFP_INTERSTITIAL(8),
            REWARD_BASED_VIDEO_AD(9),
            BANNER_SEARCH_ADS(10);


            /* renamed from: a, reason: collision with root package name */
            public static final j f4712a = new j();
            public static final int zzl = 0;
            public static final int zzm = 1;
            public static final int zzn = 2;
            public static final int zzo = 3;
            public static final int zzp = 4;
            public static final int zzq = 5;
            public static final int zzr = 6;
            public static final int zzs = 7;
            public static final int zzt = 8;
            public static final int zzu = 9;
            public static final int zzv = 10;
            private final int zzy;

            zza(int i) {
                this.zzy = i;
            }

            public static zza zzb(int i) {
                switch (i) {
                    case 0:
                        return AD_FORMAT_TYPE_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return INTERSTITIAL;
                    case 3:
                        return NATIVE_EXPRESS;
                    case 4:
                        return NATIVE_CONTENT;
                    case 5:
                        return NATIVE_APP_INSTALL;
                    case 6:
                        return NATIVE_CUSTOM_TEMPLATE;
                    case 7:
                        return DFP_BANNER;
                    case 8:
                        return DFP_INTERSTITIAL;
                    case 9:
                        return REWARD_BASED_VIDEO_AD;
                    case 10:
                        return BANNER_SEARCH_ADS;
                    default:
                        return null;
                }
            }

            public static zzgzc<zza> zzd() {
                return f4712a;
            }

            public static zzgzd zze() {
                return f.f3953a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(zza());
            }

            @Override // com.google.android.gms.internal.ads.zzgzb
            public final int zza() {
                return this.zzy;
            }
        }

        public final class zzb extends zzgyr<zzd, zzb> implements zze {
            @Override // com.google.android.gms.internal.ads.zzbbs.zze
            public zza zza() {
                return ((zzd) this.f8682e).zza();
            }

            public zzb zzb() {
                f();
                zzd.f((zzd) this.f8682e);
                return this;
            }

            public zzb zzc() {
                f();
                zzd.e((zzd) this.f8682e);
                return this;
            }

            public zzb zzd(zzal zzalVar) {
                f();
                zzd.b((zzd) this.f8682e, zzalVar);
                return this;
            }

            public zzb zze(zzal.zza zzaVar) {
                f();
                zzd.d((zzd) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zzb zzf(zzal zzalVar) {
                f();
                zzd.d((zzd) this.f8682e, zzalVar);
                return this;
            }

            public zzb zzg(zza zzaVar) {
                f();
                zzd.a((zzd) this.f8682e, zzaVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zze
            public zzal zzh() {
                return ((zzd) this.f8682e).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zze
            public boolean zzi() {
                return ((zzd) this.f8682e).zzi();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zze
            public boolean zzj() {
                return ((zzd) this.f8682e).zzj();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzc = zzdVar;
            zzgyx.cb(zzd.class, zzdVar);
        }

        public static void a(zzd zzdVar, zza zzaVar) {
            zzdVar.getClass();
            zzdVar.zzf = zzaVar.zza();
            zzdVar.zze |= 1;
        }

        public static void b(zzd zzdVar, zzal zzalVar) {
            zzdVar.getClass();
            zzalVar.getClass();
            zzal zzalVar2 = zzdVar.zzg;
            if (zzalVar2 != null && zzalVar2 != zzal.zzi()) {
                zzal.zza zzd2 = zzal.zzd(zzalVar2);
                zzd2.zzbj(zzalVar);
                zzalVar = zzd2.zzbs();
            }
            zzdVar.zzg = zzalVar;
            zzdVar.zze |= 2;
        }

        public static void d(zzd zzdVar, zzal zzalVar) {
            zzdVar.getClass();
            zzalVar.getClass();
            zzdVar.zzg = zzalVar;
            zzdVar.zze |= 2;
        }

        public static void e(zzd zzdVar) {
            zzdVar.zze &= -2;
            zzdVar.zzf = 0;
        }

        public static void f(zzd zzdVar) {
            zzdVar.zzg = null;
            zzdVar.zze &= -3;
        }

        public static zzb zzb() {
            return (zzb) zzc.cl();
        }

        public static zzb zzc(zzd zzdVar) {
            return (zzb) zzc.ci(zzdVar);
        }

        public static zzd zzf() {
            return zzc;
        }

        public static zzd zzg(InputStream inputStream) throws IOException {
            return (zzd) zzgyx.br(zzc, inputStream);
        }

        public static zzd zzk(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzd) zzgyx.bo(zzc, inputStream, zzgyhVar);
        }

        public static zzd zzl(zzgxp zzgxpVar) throws zzgzm {
            return (zzd) zzgyx.by(zzc, zzgxpVar);
        }

        public static zzd zzm(zzgxv zzgxvVar) throws IOException {
            return (zzd) zzgyx.ca(zzc, zzgxvVar);
        }

        public static zzd zzn(InputStream inputStream) throws IOException {
            return (zzd) zzgyx.ch(zzc, inputStream);
        }

        public static zzd zzo(ByteBuffer byteBuffer) throws zzgzm {
            return (zzd) zzgyx.bx(zzc, byteBuffer);
        }

        public static zzd zzp(byte[] bArr) throws zzgzm {
            return (zzd) zzgyx.cc(zzc, bArr);
        }

        public static zzd zzq(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzd) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
        }

        public static zzd zzr(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzd) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
        }

        public static zzd zzs(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzd) zzgyx.bw(zzc, inputStream, zzgyhVar);
        }

        public static zzd zzt(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzd) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
        }

        public static zzd zzu(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzd) zzgyx.bp(zzc, bArr, zzgyhVar);
        }

        public static zzhaq<zzd> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", zza.zze(), "zzg"});
                case 3:
                    return new zzd();
                case 4:
                    return new zzb(zzc);
                case 5:
                    return zzc;
                case 6:
                    zzhaq<zzd> zzhaqVar2 = zzd;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzd.class) {
                        try {
                            zzhaqVar = zzd;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzc);
                                zzd = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zze
        public zza zza() {
            zza zzb2 = zza.zzb(this.zzf);
            return zzb2 == null ? zza.AD_FORMAT_TYPE_UNSPECIFIED : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zze
        public zzal zzh() {
            zzal zzalVar = this.zzg;
            return zzalVar == null ? zzal.zzi() : zzalVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zze
        public boolean zzi() {
            return (this.zze & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zze
        public boolean zzj() {
            return (this.zze & 1) != 0;
        }
    }

    public interface zze extends zzhaj {
        zzd.zza zza();

        zzal zzh();

        boolean zzi();

        boolean zzj();
    }

    public interface zzf extends zzhaj {
        int zza();

        zzd zzab(int i);

        zzg zzac();

        zzi zzad();

        zzk zzae();

        zzq zzaf();

        zzx zzag();

        zzz zzah();

        zzac zzai();

        zzah zzaj();

        zzat zzak(int i);

        List<zzd> zzal();

        List<zzat> zzam();

        boolean zzan();

        boolean zzao();

        boolean zzap();

        boolean zzaq();

        boolean zzar();

        boolean zzas();

        boolean zzat();

        boolean zzau();

        boolean zzav();

        int zzb();

        zza.EnumC0207zza zzc();
    }

    public final class zzg extends zzgyx<zzg, zza> implements zzh {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzg zzd;
        private static volatile zzhaq<zzg> zze;
        private int zzf;
        private String zzg = "";
        private zzgzj<zzd> zzh = ahn.f10232c;
        private int zzi;

        public final class zza extends zzgyr<zzg, zza> implements zzh {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzh
            public int zza() {
                return ((zzg) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzh
            public zzd zzb(int i) {
                return ((zzg) this.f8682e).zzb(i);
            }

            public zza zzc(Iterable<? extends zzd> iterable) {
                f();
                zzg.a((zzg) this.f8682e, iterable);
                return this;
            }

            public zza zzd(zzd.zzb zzbVar) {
                f();
                zzg.m((zzg) this.f8682e, zzbVar.zzbr());
                return this;
            }

            public zza zze(zzd zzdVar) {
                f();
                zzg.m((zzg) this.f8682e, zzdVar);
                return this;
            }

            public zza zzf(int i, zzd.zzb zzbVar) {
                f();
                zzg.h((zzg) this.f8682e, i, zzbVar.zzbr());
                return this;
            }

            public zza zzg(int i, zzd zzdVar) {
                f();
                zzg.h((zzg) this.f8682e, i, zzdVar);
                return this;
            }

            public zza zzh() {
                f();
                zzg.g((zzg) this.f8682e);
                return this;
            }

            public zza zzi() {
                f();
                zzg.b((zzg) this.f8682e);
                return this;
            }

            public zza zzj() {
                f();
                zzg.f((zzg) this.f8682e);
                return this;
            }

            public zza zzk(int i) {
                f();
                zzg.e((zzg) this.f8682e, i);
                return this;
            }

            public zza zzl(String str) {
                f();
                zzg.l((zzg) this.f8682e, str);
                return this;
            }

            public zza zzm(zzgxp zzgxpVar) {
                f();
                zzg.j((zzg) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzn(zzq zzqVar) {
                f();
                zzg.d((zzg) this.f8682e, zzqVar);
                return this;
            }

            public zza zzo(int i, zzd.zzb zzbVar) {
                f();
                zzg.i((zzg) this.f8682e, i, zzbVar.zzbr());
                return this;
            }

            public zza zzp(int i, zzd zzdVar) {
                f();
                zzg.i((zzg) this.f8682e, i, zzdVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzh
            public zzq zzq() {
                return ((zzg) this.f8682e).zzq();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzh
            public zzgxp zzr() {
                return ((zzg) this.f8682e).zzr();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzh
            public String zzs() {
                return ((zzg) this.f8682e).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzh
            public List<zzd> zzt() {
                return Collections.unmodifiableList(((zzg) this.f8682e).zzt());
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzh
            public boolean zzu() {
                return ((zzg) this.f8682e).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzh
            public boolean zzv() {
                return ((zzg) this.f8682e).zzv();
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzd = zzgVar;
            zzgyx.cb(zzg.class, zzgVar);
        }

        public static void a(zzg zzgVar, Iterable iterable) {
            zzgVar.n();
            zzgwy.bi(iterable, zzgVar.zzh);
        }

        public static void b(zzg zzgVar) {
            zzgVar.zzf &= -3;
            zzgVar.zzi = 0;
        }

        public static void d(zzg zzgVar, zzq zzqVar) {
            zzgVar.getClass();
            zzgVar.zzi = zzqVar.zza();
            zzgVar.zzf |= 2;
        }

        public static void e(zzg zzgVar, int i) {
            zzgVar.n();
            zzgVar.zzh.remove(i);
        }

        public static void f(zzg zzgVar) {
            zzgVar.getClass();
            zzgVar.zzh = ahn.f10232c;
        }

        public static void g(zzg zzgVar) {
            zzgVar.zzf &= -2;
            zzgVar.zzg = zzh().zzs();
        }

        public static void h(zzg zzgVar, int i, zzd zzdVar) {
            zzgVar.getClass();
            zzdVar.getClass();
            zzgVar.n();
            zzgVar.zzh.add(i, zzdVar);
        }

        public static void i(zzg zzgVar, int i, zzd zzdVar) {
            zzgVar.getClass();
            zzdVar.getClass();
            zzgVar.n();
            zzgVar.zzh.set(i, zzdVar);
        }

        public static void j(zzg zzgVar, zzgxp zzgxpVar) {
            zzgVar.getClass();
            zzgVar.zzg = zzgxpVar.zzx();
            zzgVar.zzf |= 1;
        }

        public static void l(zzg zzgVar, String str) {
            zzgVar.getClass();
            str.getClass();
            zzgVar.zzf |= 1;
            zzgVar.zzg = str;
        }

        public static void m(zzg zzgVar, zzd zzdVar) {
            zzgVar.getClass();
            zzdVar.getClass();
            zzgVar.n();
            zzgVar.zzh.add(zzdVar);
        }

        public static zzhaq<zzg> zzA() {
            return zzd.zzbN();
        }

        public static zza zzd() {
            return (zza) zzd.cl();
        }

        public static zza zzf(zzg zzgVar) {
            return (zza) zzd.ci(zzgVar);
        }

        public static zzg zzh() {
            return zzd;
        }

        public static zzg zzi(InputStream inputStream) throws IOException {
            return (zzg) zzgyx.br(zzd, inputStream);
        }

        public static zzg zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzg) zzgyx.bo(zzd, inputStream, zzgyhVar);
        }

        public static zzg zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zzg) zzgyx.by(zzd, zzgxpVar);
        }

        public static zzg zzl(zzgxv zzgxvVar) throws IOException {
            return (zzg) zzgyx.ca(zzd, zzgxvVar);
        }

        public static zzg zzm(InputStream inputStream) throws IOException {
            return (zzg) zzgyx.ch(zzd, inputStream);
        }

        public static zzg zzn(ByteBuffer byteBuffer) throws zzgzm {
            return (zzg) zzgyx.bx(zzd, byteBuffer);
        }

        public static zzg zzo(byte[] bArr) throws zzgzm {
            return (zzg) zzgyx.cc(zzd, bArr);
        }

        public static zzg zzp(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzg) zzgyx.bu(zzd, zzgxpVar, zzgyhVar);
        }

        public static zzg zzw(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzg) zzgyx.bv(zzd, zzgxvVar, zzgyhVar);
        }

        public static zzg zzx(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzg) zzgyx.bw(zzd, inputStream, zzgyhVar);
        }

        public static zzg zzy(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzg) zzgyx.cf(zzd, byteBuffer, zzgyhVar);
        }

        public static zzg zzz(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzg) zzgyx.bp(zzd, bArr, zzgyhVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001", new Object[]{"zzf", "zzg", "zzh", zzd.class, "zzi", zzq.zze()});
                case 3:
                    return new zzg();
                case 4:
                    return new zza(zzd);
                case 5:
                    return zzd;
                case 6:
                    zzhaq<zzg> zzhaqVar2 = zze;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzg.class) {
                        try {
                            zzhaqVar = zze;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzd);
                                zze = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final void n() {
            zzgzj<zzd> zzgzjVar = this.zzh;
            if (zzgzjVar.zzc()) {
                return;
            }
            this.zzh = zzgyx.bn(zzgzjVar);
        }

        public List<? extends zze> zzB() {
            return this.zzh;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzh
        public int zza() {
            return this.zzh.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzh
        public zzd zzb(int i) {
            return this.zzh.get(i);
        }

        public zze zzc(int i) {
            return this.zzh.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzh
        public zzq zzq() {
            zzq zzb2 = zzq.zzb(this.zzi);
            return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzh
        public zzgxp zzr() {
            return zzgxp.zzw(this.zzg);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzh
        public String zzs() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzh
        public List<zzd> zzt() {
            return this.zzh;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzh
        public boolean zzu() {
            return (this.zzf & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzh
        public boolean zzv() {
            return (this.zzf & 2) != 0;
        }
    }

    public interface zzh extends zzhaj {
        int zza();

        zzd zzb(int i);

        zzq zzq();

        zzgxp zzr();

        String zzs();

        List<zzd> zzt();

        boolean zzu();

        boolean zzv();
    }

    public final class zzi extends zzgyx<zzi, zza> implements zzj {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        private static final zzi zzf;
        private static volatile zzhaq<zzi> zzg;
        private int zzh;
        private String zzi = "";
        private zzgzj<zzd> zzj = ahn.f10232c;
        private int zzk = 1000;
        private int zzl = 1000;
        private int zzm = 1000;

        public final class zza extends zzgyr<zzi, zza> implements zzj {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public boolean zzA() {
                return ((zzi) this.f8682e).zzA();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public boolean zzB() {
                return ((zzi) this.f8682e).zzB();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public boolean zzC() {
                return ((zzi) this.f8682e).zzC();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public boolean zzD() {
                return ((zzi) this.f8682e).zzD();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public int zza() {
                return ((zzi) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public zzd zzb(int i) {
                return ((zzi) this.f8682e).zzb(i);
            }

            public zza zzc(Iterable<? extends zzd> iterable) {
                f();
                zzi.a((zzi) this.f8682e, iterable);
                return this;
            }

            public zza zzd(zzd.zzb zzbVar) {
                f();
                zzi.q((zzi) this.f8682e, zzbVar.zzbr());
                return this;
            }

            public zza zze(zzd zzdVar) {
                f();
                zzi.q((zzi) this.f8682e, zzdVar);
                return this;
            }

            public zza zzf(int i, zzd.zzb zzbVar) {
                f();
                zzi.k((zzi) this.f8682e, i, zzbVar.zzbr());
                return this;
            }

            public zza zzg(int i, zzd zzdVar) {
                f();
                zzi.k((zzi) this.f8682e, i, zzdVar);
                return this;
            }

            public zza zzh() {
                f();
                zzi.j((zzi) this.f8682e);
                return this;
            }

            public zza zzi() {
                f();
                zzi.b((zzi) this.f8682e);
                return this;
            }

            public zza zzj() {
                f();
                zzi.h((zzi) this.f8682e);
                return this;
            }

            public zza zzk() {
                f();
                zzi.e((zzi) this.f8682e);
                return this;
            }

            public zza zzl() {
                f();
                zzi.o((zzi) this.f8682e);
                return this;
            }

            public zza zzm(int i) {
                f();
                zzi.m((zzi) this.f8682e, i);
                return this;
            }

            public zza zzn(zzq zzqVar) {
                f();
                zzi.d((zzi) this.f8682e, zzqVar);
                return this;
            }

            public zza zzo(String str) {
                f();
                zzi.l((zzi) this.f8682e, str);
                return this;
            }

            public zza zzp(zzgxp zzgxpVar) {
                f();
                zzi.p((zzi) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzq(zzq zzqVar) {
                f();
                zzi.n((zzi) this.f8682e, zzqVar);
                return this;
            }

            public zza zzr(zzq zzqVar) {
                f();
                zzi.g((zzi) this.f8682e, zzqVar);
                return this;
            }

            public zza zzs(int i, zzd.zzb zzbVar) {
                f();
                zzi.f((zzi) this.f8682e, i, zzbVar.zzbr());
                return this;
            }

            public zza zzt(int i, zzd zzdVar) {
                f();
                zzi.f((zzi) this.f8682e, i, zzdVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public zzq zzu() {
                return ((zzi) this.f8682e).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public zzq zzv() {
                return ((zzi) this.f8682e).zzv();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public zzq zzw() {
                return ((zzi) this.f8682e).zzw();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public zzgxp zzx() {
                return ((zzi) this.f8682e).zzx();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public String zzy() {
                return ((zzi) this.f8682e).zzy();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzj
            public List<zzd> zzz() {
                return Collections.unmodifiableList(((zzi) this.f8682e).zzz());
            }
        }

        static {
            zzi zziVar = new zzi();
            zzf = zziVar;
            zzgyx.cb(zzi.class, zziVar);
        }

        public static void a(zzi zziVar, Iterable iterable) {
            zziVar.r();
            zzgwy.bi(iterable, zziVar.zzj);
        }

        public static void b(zzi zziVar) {
            zziVar.zzh &= -2;
            zziVar.zzi = zzh().zzy();
        }

        public static void d(zzi zziVar, zzq zzqVar) {
            zziVar.getClass();
            zziVar.zzm = zzqVar.zza();
            zziVar.zzh |= 8;
        }

        public static void e(zzi zziVar) {
            zziVar.zzh &= -3;
            zziVar.zzk = 1000;
        }

        public static void f(zzi zziVar, int i, zzd zzdVar) {
            zziVar.getClass();
            zzdVar.getClass();
            zziVar.r();
            zziVar.zzj.set(i, zzdVar);
        }

        public static void g(zzi zziVar, zzq zzqVar) {
            zziVar.getClass();
            zziVar.zzk = zzqVar.zza();
            zziVar.zzh |= 2;
        }

        public static void h(zzi zziVar) {
            zziVar.zzh &= -5;
            zziVar.zzl = 1000;
        }

        public static void j(zzi zziVar) {
            zziVar.zzh &= -9;
            zziVar.zzm = 1000;
        }

        public static void k(zzi zziVar, int i, zzd zzdVar) {
            zziVar.getClass();
            zzdVar.getClass();
            zziVar.r();
            zziVar.zzj.add(i, zzdVar);
        }

        public static void l(zzi zziVar, String str) {
            zziVar.getClass();
            str.getClass();
            zziVar.zzh |= 1;
            zziVar.zzi = str;
        }

        public static void m(zzi zziVar, int i) {
            zziVar.r();
            zziVar.zzj.remove(i);
        }

        public static void n(zzi zziVar, zzq zzqVar) {
            zziVar.getClass();
            zziVar.zzl = zzqVar.zza();
            zziVar.zzh |= 4;
        }

        public static void o(zzi zziVar) {
            zziVar.getClass();
            zziVar.zzj = ahn.f10232c;
        }

        public static void p(zzi zziVar, zzgxp zzgxpVar) {
            zziVar.getClass();
            zziVar.zzi = zzgxpVar.zzx();
            zziVar.zzh |= 1;
        }

        public static void q(zzi zziVar, zzd zzdVar) {
            zziVar.getClass();
            zzdVar.getClass();
            zziVar.r();
            zziVar.zzj.add(zzdVar);
        }

        public static zzhaq<zzi> zzE() {
            return zzf.zzbN();
        }

        public static zza zzd() {
            return (zza) zzf.cl();
        }

        public static zza zzf(zzi zziVar) {
            return (zza) zzf.ci(zziVar);
        }

        public static zzi zzh() {
            return zzf;
        }

        public static zzi zzi(InputStream inputStream) throws IOException {
            return (zzi) zzgyx.br(zzf, inputStream);
        }

        public static zzi zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzi) zzgyx.bo(zzf, inputStream, zzgyhVar);
        }

        public static zzi zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zzi) zzgyx.by(zzf, zzgxpVar);
        }

        public static zzi zzl(zzgxv zzgxvVar) throws IOException {
            return (zzi) zzgyx.ca(zzf, zzgxvVar);
        }

        public static zzi zzm(InputStream inputStream) throws IOException {
            return (zzi) zzgyx.ch(zzf, inputStream);
        }

        public static zzi zzn(ByteBuffer byteBuffer) throws zzgzm {
            return (zzi) zzgyx.bx(zzf, byteBuffer);
        }

        public static zzi zzo(byte[] bArr) throws zzgzm {
            return (zzi) zzgyx.cc(zzf, bArr);
        }

        public static zzi zzp(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzi) zzgyx.bu(zzf, zzgxpVar, zzgyhVar);
        }

        public static zzi zzq(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzi) zzgyx.bv(zzf, zzgxvVar, zzgyhVar);
        }

        public static zzi zzr(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzi) zzgyx.bw(zzf, inputStream, zzgyhVar);
        }

        public static zzi zzs(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzi) zzgyx.cf(zzf, byteBuffer, zzgyhVar);
        }

        public static zzi zzt(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzi) zzgyx.bp(zzf, bArr, zzgyhVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzf, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001\u0004᠌\u0002\u0005᠌\u0003", new Object[]{"zzh", "zzi", "zzj", zzd.class, "zzk", zzq.zze(), "zzl", zzq.zze(), "zzm", zzq.zze()});
                case 3:
                    return new zzi();
                case 4:
                    return new zza(zzf);
                case 5:
                    return zzf;
                case 6:
                    zzhaq<zzi> zzhaqVar2 = zzg;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzi.class) {
                        try {
                            zzhaqVar = zzg;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzf);
                                zzg = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final void r() {
            zzgzj<zzd> zzgzjVar = this.zzj;
            if (zzgzjVar.zzc()) {
                return;
            }
            this.zzj = zzgyx.bn(zzgzjVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public boolean zzA() {
            return (this.zzh & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public boolean zzB() {
            return (this.zzh & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public boolean zzC() {
            return (this.zzh & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public boolean zzD() {
            return (this.zzh & 2) != 0;
        }

        public List<? extends zze> zzF() {
            return this.zzj;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public int zza() {
            return this.zzj.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public zzd zzb(int i) {
            return this.zzj.get(i);
        }

        public zze zzc(int i) {
            return this.zzj.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public zzq zzu() {
            zzq zzb2 = zzq.zzb(this.zzm);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public zzq zzv() {
            zzq zzb2 = zzq.zzb(this.zzl);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public zzq zzw() {
            zzq zzb2 = zzq.zzb(this.zzk);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public zzgxp zzx() {
            return zzgxp.zzw(this.zzi);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public String zzy() {
            return this.zzi;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzj
        public List<zzd> zzz() {
            return this.zzj;
        }
    }

    public interface zzj extends zzhaj {
        boolean zzA();

        boolean zzB();

        boolean zzC();

        boolean zzD();

        int zza();

        zzd zzb(int i);

        zzq zzu();

        zzq zzv();

        zzq zzw();

        zzgxp zzx();

        String zzy();

        List<zzd> zzz();
    }

    public final class zzk extends zzgyx<zzk, zza> implements zzl {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        private static final zzk zzg;
        private static volatile zzhaq<zzk> zzh;
        private int zzi;
        private int zzj;
        private zzap zzk;
        private zzap zzl;
        private zzap zzm;
        private zzgzj<zzap> zzn = ahn.f10232c;
        private int zzo;

        public final class zza extends zzgyr<zzk, zza> implements zzl {
            public zza zzA(zzap zzapVar) {
                f();
                zzk.f((zzk) this.f8682e, zzapVar);
                return this;
            }

            public zza zzB(int i) {
                f();
                zzk.k((zzk) this.f8682e, i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public zzap zzC() {
                return ((zzk) this.f8682e).zzC();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public zzap zzD() {
                return ((zzk) this.f8682e).zzD();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public zzap zzE(int i) {
                return ((zzk) this.f8682e).zzE(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public zzap zzF() {
                return ((zzk) this.f8682e).zzF();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public List<zzap> zzG() {
                return Collections.unmodifiableList(((zzk) this.f8682e).zzG());
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public boolean zzH() {
                return ((zzk) this.f8682e).zzH();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public boolean zzI() {
                return ((zzk) this.f8682e).zzI();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public boolean zzJ() {
                return ((zzk) this.f8682e).zzJ();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public boolean zzK() {
                return ((zzk) this.f8682e).zzK();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public boolean zzL() {
                return ((zzk) this.f8682e).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public int zza() {
                return ((zzk) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public int zzb() {
                return ((zzk) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzl
            public int zzc() {
                return ((zzk) this.f8682e).zzc();
            }

            public zza zzd(zzap.zza zzaVar) {
                f();
                zzk.s((zzk) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zze(zzap zzapVar) {
                f();
                zzk.s((zzk) this.f8682e, zzapVar);
                return this;
            }

            public zza zzf(int i, zzap.zza zzaVar) {
                f();
                zzk.m((zzk) this.f8682e, i, zzaVar.zzbr());
                return this;
            }

            public zza zzg(int i, zzap zzapVar) {
                f();
                zzk.m((zzk) this.f8682e, i, zzapVar);
                return this;
            }

            public zza zzh(Iterable<? extends zzap> iterable) {
                f();
                zzk.h((zzk) this.f8682e, iterable);
                return this;
            }

            public zza zzi() {
                f();
                zzk.a((zzk) this.f8682e);
                return this;
            }

            public zza zzj() {
                f();
                zzk.t((zzk) this.f8682e);
                return this;
            }

            public zza zzk() {
                f();
                zzk.l((zzk) this.f8682e);
                return this;
            }

            public zza zzl() {
                f();
                zzk.j((zzk) this.f8682e);
                return this;
            }

            public zza zzm() {
                f();
                zzk.b((zzk) this.f8682e);
                return this;
            }

            public zza zzn() {
                f();
                zzk.i((zzk) this.f8682e);
                return this;
            }

            public zza zzo(zzap zzapVar) {
                f();
                zzk.e((zzk) this.f8682e, zzapVar);
                return this;
            }

            public zza zzp(zzap zzapVar) {
                f();
                zzk.q((zzk) this.f8682e, zzapVar);
                return this;
            }

            public zza zzq(zzap zzapVar) {
                f();
                zzk.o((zzk) this.f8682e, zzapVar);
                return this;
            }

            public zza zzr(int i) {
                f();
                zzk.d((zzk) this.f8682e, i);
                return this;
            }

            public zza zzs(int i) {
                f();
                zzk.n((zzk) this.f8682e, i);
                return this;
            }

            public zza zzt(zzap.zza zzaVar) {
                f();
                zzk.r((zzk) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzu(zzap zzapVar) {
                f();
                zzk.r((zzk) this.f8682e, zzapVar);
                return this;
            }

            public zza zzv(zzap.zza zzaVar) {
                f();
                zzk.p((zzk) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzw(zzap zzapVar) {
                f();
                zzk.p((zzk) this.f8682e, zzapVar);
                return this;
            }

            public zza zzx(int i, zzap.zza zzaVar) {
                f();
                zzk.g((zzk) this.f8682e, i, zzaVar.zzbr());
                return this;
            }

            public zza zzy(int i, zzap zzapVar) {
                f();
                zzk.g((zzk) this.f8682e, i, zzapVar);
                return this;
            }

            public zza zzz(zzap.zza zzaVar) {
                f();
                zzk.f((zzk) this.f8682e, zzaVar.zzbr());
                return this;
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzg = zzkVar;
            zzgyx.cb(zzk.class, zzkVar);
        }

        public static void a(zzk zzkVar) {
            zzkVar.zzi &= -2;
            zzkVar.zzj = 0;
        }

        public static void b(zzk zzkVar) {
            zzkVar.zzm = null;
            zzkVar.zzi &= -9;
        }

        public static void d(zzk zzkVar, int i) {
            zzkVar.v();
            zzkVar.zzn.remove(i);
        }

        public static void e(zzk zzkVar, zzap zzapVar) {
            zzkVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzkVar.zzl;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzkVar.zzl = zzapVar;
            zzkVar.zzi |= 4;
        }

        public static void f(zzk zzkVar, zzap zzapVar) {
            zzkVar.getClass();
            zzapVar.getClass();
            zzkVar.zzm = zzapVar;
            zzkVar.zzi |= 8;
        }

        public static void g(zzk zzkVar, int i, zzap zzapVar) {
            zzkVar.getClass();
            zzapVar.getClass();
            zzkVar.v();
            zzkVar.zzn.set(i, zzapVar);
        }

        public static void h(zzk zzkVar, Iterable iterable) {
            zzkVar.v();
            zzgwy.bi(iterable, zzkVar.zzn);
        }

        public static void i(zzk zzkVar) {
            zzkVar.zzi &= -17;
            zzkVar.zzo = 0;
        }

        public static void j(zzk zzkVar) {
            zzkVar.getClass();
            zzkVar.zzn = ahn.f10232c;
        }

        public static void k(zzk zzkVar, int i) {
            zzkVar.zzi |= 16;
            zzkVar.zzo = i;
        }

        public static void l(zzk zzkVar) {
            zzkVar.zzk = null;
            zzkVar.zzi &= -3;
        }

        public static void m(zzk zzkVar, int i, zzap zzapVar) {
            zzkVar.getClass();
            zzapVar.getClass();
            zzkVar.v();
            zzkVar.zzn.add(i, zzapVar);
        }

        public static void n(zzk zzkVar, int i) {
            zzkVar.zzi |= 1;
            zzkVar.zzj = i;
        }

        public static void o(zzk zzkVar, zzap zzapVar) {
            zzkVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzkVar.zzm;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzkVar.zzm = zzapVar;
            zzkVar.zzi |= 8;
        }

        public static void p(zzk zzkVar, zzap zzapVar) {
            zzkVar.getClass();
            zzapVar.getClass();
            zzkVar.zzk = zzapVar;
            zzkVar.zzi |= 2;
        }

        public static void q(zzk zzkVar, zzap zzapVar) {
            zzkVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzkVar.zzk;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzkVar.zzk = zzapVar;
            zzkVar.zzi |= 2;
        }

        public static void r(zzk zzkVar, zzap zzapVar) {
            zzkVar.getClass();
            zzapVar.getClass();
            zzkVar.zzl = zzapVar;
            zzkVar.zzi |= 4;
        }

        public static void s(zzk zzkVar, zzap zzapVar) {
            zzkVar.getClass();
            zzapVar.getClass();
            zzkVar.v();
            zzkVar.zzn.add(zzapVar);
        }

        public static void t(zzk zzkVar) {
            zzkVar.zzl = null;
            zzkVar.zzi &= -5;
        }

        public static zza zzd() {
            return (zza) zzg.cl();
        }

        public static zza zzf(zzk zzkVar) {
            return (zza) zzg.ci(zzkVar);
        }

        public static zzk zzh() {
            return zzg;
        }

        public static zzk zzi(InputStream inputStream) throws IOException {
            return (zzk) zzgyx.br(zzg, inputStream);
        }

        public static zzk zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzk) zzgyx.bo(zzg, inputStream, zzgyhVar);
        }

        public static zzk zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zzk) zzgyx.by(zzg, zzgxpVar);
        }

        public static zzk zzl(zzgxv zzgxvVar) throws IOException {
            return (zzk) zzgyx.ca(zzg, zzgxvVar);
        }

        public static zzk zzm(InputStream inputStream) throws IOException {
            return (zzk) zzgyx.ch(zzg, inputStream);
        }

        public static zzk zzn(ByteBuffer byteBuffer) throws zzgzm {
            return (zzk) zzgyx.bx(zzg, byteBuffer);
        }

        public static zzk zzo(byte[] bArr) throws zzgzm {
            return (zzk) zzgyx.cc(zzg, bArr);
        }

        public static zzk zzp(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzk) zzgyx.bu(zzg, zzgxpVar, zzgyhVar);
        }

        public static zzk zzq(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzk) zzgyx.bv(zzg, zzgxvVar, zzgyhVar);
        }

        public static zzk zzr(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzk) zzgyx.bw(zzg, inputStream, zzgyhVar);
        }

        public static zzk zzs(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzk) zzgyx.cf(zzg, byteBuffer, zzgyhVar);
        }

        public static zzk zzt(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzk) zzgyx.bp(zzg, bArr, zzgyhVar);
        }

        public static zzhaq<zzk> zzv() {
            return zzg.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzg, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzi", "zzj", "zzk", "zzl", "zzm", "zzn", zzap.class, "zzo"});
                case 3:
                    return new zzk();
                case 4:
                    return new zza(zzg);
                case 5:
                    return zzg;
                case 6:
                    zzhaq<zzk> zzhaqVar2 = zzh;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzk.class) {
                        try {
                            zzhaqVar = zzh;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzg);
                                zzh = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final void v() {
            zzgzj<zzap> zzgzjVar = this.zzn;
            if (zzgzjVar.zzc()) {
                return;
            }
            this.zzn = zzgyx.bn(zzgzjVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public zzap zzC() {
            zzap zzapVar = this.zzl;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public zzap zzD() {
            zzap zzapVar = this.zzk;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public zzap zzE(int i) {
            return this.zzn.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public zzap zzF() {
            zzap zzapVar = this.zzm;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public List<zzap> zzG() {
            return this.zzn;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public boolean zzH() {
            return (this.zzi & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public boolean zzI() {
            return (this.zzi & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public boolean zzJ() {
            return (this.zzi & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public boolean zzK() {
            return (this.zzi & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public boolean zzL() {
            return (this.zzi & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public int zza() {
            return this.zzj;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public int zzb() {
            return this.zzn.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzl
        public int zzc() {
            return this.zzo;
        }

        public zzaq zzu(int i) {
            return this.zzn.get(i);
        }

        public List<? extends zzaq> zzw() {
            return this.zzn;
        }
    }

    public interface zzl extends zzhaj {
        zzap zzC();

        zzap zzD();

        zzap zzE(int i);

        zzap zzF();

        List<zzap> zzG();

        boolean zzH();

        boolean zzI();

        boolean zzJ();

        boolean zzK();

        boolean zzL();

        int zza();

        int zzb();

        int zzc();
    }

    public final class zzm extends zzgyx<zzm, zza> implements zzn {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        public static final int zzh = 8;
        private static final zzm zzi;
        private static volatile zzhaq<zzm> zzj;
        private int zzk;
        private zzap zzm;
        private int zzn;
        private zzar zzo;
        private int zzp;
        private String zzl = "";
        private int zzu = 1000;
        private int zzv = 1000;
        private int zzw = 1000;

        public final class zza extends zzgyr<zzm, zza> implements zzn {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public zzap zzA() {
                return ((zzm) this.f8682e).zzA();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public zzar zzB() {
                return ((zzm) this.f8682e).zzB();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public zzgxp zzC() {
                return ((zzm) this.f8682e).zzC();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public String zzD() {
                return ((zzm) this.f8682e).zzD();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public boolean zzE() {
                return ((zzm) this.f8682e).zzE();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public boolean zzF() {
                return ((zzm) this.f8682e).zzF();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public boolean zzG() {
                return ((zzm) this.f8682e).zzG();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public boolean zzH() {
                return ((zzm) this.f8682e).zzH();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public boolean zzI() {
                return ((zzm) this.f8682e).zzI();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public boolean zzJ() {
                return ((zzm) this.f8682e).zzJ();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public boolean zzK() {
                return ((zzm) this.f8682e).zzK();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public boolean zzL() {
                return ((zzm) this.f8682e).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public int zza() {
                return ((zzm) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public int zzb() {
                return ((zzm) this.f8682e).zzb();
            }

            public zza zzc() {
                f();
                zzm.u((zzm) this.f8682e);
                return this;
            }

            public zza zzd() {
                f();
                zzm.s((zzm) this.f8682e);
                return this;
            }

            public zza zze() {
                f();
                zzm.m((zzm) this.f8682e);
                return this;
            }

            public zza zzf() {
                f();
                zzm.a((zzm) this.f8682e);
                return this;
            }

            public zza zzg() {
                f();
                zzm.t((zzm) this.f8682e);
                return this;
            }

            public zza zzh() {
                f();
                zzm.l((zzm) this.f8682e);
                return this;
            }

            public zza zzi() {
                f();
                zzm.j((zzm) this.f8682e);
                return this;
            }

            public zza zzj() {
                f();
                zzm.b((zzm) this.f8682e);
                return this;
            }

            public zza zzk(zzap zzapVar) {
                f();
                zzm.h((zzm) this.f8682e, zzapVar);
                return this;
            }

            public zza zzl(zzar zzarVar) {
                f();
                zzm.e((zzm) this.f8682e, zzarVar);
                return this;
            }

            public zza zzm(String str) {
                f();
                zzm.q((zzm) this.f8682e, str);
                return this;
            }

            public zza zzn(zzgxp zzgxpVar) {
                f();
                zzm.o((zzm) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzo(zzq zzqVar) {
                f();
                zzm.d((zzm) this.f8682e, zzqVar);
                return this;
            }

            public zza zzp(zzq zzqVar) {
                f();
                zzm.n((zzm) this.f8682e, zzqVar);
                return this;
            }

            public zza zzq(zzq zzqVar) {
                f();
                zzm.r((zzm) this.f8682e, zzqVar);
                return this;
            }

            public zza zzr(zzap.zza zzaVar) {
                f();
                zzm.p((zzm) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzs(zzap zzapVar) {
                f();
                zzm.p((zzm) this.f8682e, zzapVar);
                return this;
            }

            public zza zzt(int i) {
                f();
                zzm.g((zzm) this.f8682e, i);
                return this;
            }

            public zza zzu(int i) {
                f();
                zzm.f((zzm) this.f8682e, i);
                return this;
            }

            public zza zzv(zzar.zza zzaVar) {
                f();
                zzm.k((zzm) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzw(zzar zzarVar) {
                f();
                zzm.k((zzm) this.f8682e, zzarVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public zzq zzx() {
                return ((zzm) this.f8682e).zzx();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public zzq zzy() {
                return ((zzm) this.f8682e).zzy();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzn
            public zzq zzz() {
                return ((zzm) this.f8682e).zzz();
            }
        }

        static {
            zzm zzmVar = new zzm();
            zzi = zzmVar;
            zzgyx.cb(zzm.class, zzmVar);
        }

        public static void a(zzm zzmVar) {
            zzmVar.zzk &= -129;
            zzmVar.zzw = 1000;
        }

        public static void b(zzm zzmVar) {
            zzmVar.zzo = null;
            zzmVar.zzk &= -9;
        }

        public static void d(zzm zzmVar, zzq zzqVar) {
            zzmVar.getClass();
            zzmVar.zzu = zzqVar.zza();
            zzmVar.zzk |= 32;
        }

        public static void e(zzm zzmVar, zzar zzarVar) {
            zzmVar.getClass();
            zzarVar.getClass();
            zzar zzarVar2 = zzmVar.zzo;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            zzmVar.zzo = zzarVar;
            zzmVar.zzk |= 8;
        }

        public static void f(zzm zzmVar, int i) {
            zzmVar.zzk |= 4;
            zzmVar.zzn = i;
        }

        public static void g(zzm zzmVar, int i) {
            zzmVar.zzk |= 16;
            zzmVar.zzp = i;
        }

        public static void h(zzm zzmVar, zzap zzapVar) {
            zzmVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzmVar.zzm;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzmVar.zzm = zzapVar;
            zzmVar.zzk |= 2;
        }

        public static void j(zzm zzmVar) {
            zzmVar.zzk &= -5;
            zzmVar.zzn = 0;
        }

        public static void k(zzm zzmVar, zzar zzarVar) {
            zzmVar.getClass();
            zzarVar.getClass();
            zzmVar.zzo = zzarVar;
            zzmVar.zzk |= 8;
        }

        public static void l(zzm zzmVar) {
            zzmVar.zzk &= -17;
            zzmVar.zzp = 0;
        }

        public static void m(zzm zzmVar) {
            zzmVar.zzk &= -65;
            zzmVar.zzv = 1000;
        }

        public static void n(zzm zzmVar, zzq zzqVar) {
            zzmVar.getClass();
            zzmVar.zzv = zzqVar.zza();
            zzmVar.zzk |= 64;
        }

        public static void o(zzm zzmVar, zzgxp zzgxpVar) {
            zzmVar.getClass();
            zzmVar.zzl = zzgxpVar.zzx();
            zzmVar.zzk |= 1;
        }

        public static void p(zzm zzmVar, zzap zzapVar) {
            zzmVar.getClass();
            zzapVar.getClass();
            zzmVar.zzm = zzapVar;
            zzmVar.zzk |= 2;
        }

        public static void q(zzm zzmVar, String str) {
            zzmVar.getClass();
            str.getClass();
            zzmVar.zzk |= 1;
            zzmVar.zzl = str;
        }

        public static void r(zzm zzmVar, zzq zzqVar) {
            zzmVar.getClass();
            zzmVar.zzw = zzqVar.zza();
            zzmVar.zzk |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        }

        public static void s(zzm zzmVar) {
            zzmVar.zzk &= -33;
            zzmVar.zzu = 1000;
        }

        public static void t(zzm zzmVar) {
            zzmVar.zzm = null;
            zzmVar.zzk &= -3;
        }

        public static void u(zzm zzmVar) {
            zzmVar.zzk &= -2;
            zzmVar.zzl = zzg().zzD();
        }

        public static zza zzc() {
            return (zza) zzi.cl();
        }

        public static zza zzd(zzm zzmVar) {
            return (zza) zzi.ci(zzmVar);
        }

        public static zzm zzg() {
            return zzi;
        }

        public static zzm zzh(InputStream inputStream) throws IOException {
            return (zzm) zzgyx.br(zzi, inputStream);
        }

        public static zzm zzi(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzm) zzgyx.bo(zzi, inputStream, zzgyhVar);
        }

        public static zzm zzj(zzgxp zzgxpVar) throws zzgzm {
            return (zzm) zzgyx.by(zzi, zzgxpVar);
        }

        public static zzm zzk(zzgxv zzgxvVar) throws IOException {
            return (zzm) zzgyx.ca(zzi, zzgxvVar);
        }

        public static zzm zzl(InputStream inputStream) throws IOException {
            return (zzm) zzgyx.ch(zzi, inputStream);
        }

        public static zzm zzm(ByteBuffer byteBuffer) throws zzgzm {
            return (zzm) zzgyx.bx(zzi, byteBuffer);
        }

        public static zzm zzn(byte[] bArr) throws zzgzm {
            return (zzm) zzgyx.cc(zzi, bArr);
        }

        public static zzm zzo(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzm) zzgyx.bu(zzi, zzgxpVar, zzgyhVar);
        }

        public static zzm zzp(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzm) zzgyx.bv(zzi, zzgxvVar, zzgyhVar);
        }

        public static zzm zzq(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzm) zzgyx.bw(zzi, inputStream, zzgyhVar);
        }

        public static zzm zzr(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzm) zzgyx.cf(zzi, byteBuffer, zzgyhVar);
        }

        public static zzm zzs(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzm) zzgyx.bp(zzi, bArr, zzgyhVar);
        }

        public static zzhaq<zzm> zzt() {
            return zzi.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzi, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007", new Object[]{"zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", zzq.zze(), "zzv", zzq.zze(), "zzw", zzq.zze()});
                case 3:
                    return new zzm();
                case 4:
                    return new zza(zzi);
                case 5:
                    return zzi;
                case 6:
                    zzhaq<zzm> zzhaqVar2 = zzj;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzm.class) {
                        try {
                            zzhaqVar = zzj;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzi);
                                zzj = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public zzap zzA() {
            zzap zzapVar = this.zzm;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public zzar zzB() {
            zzar zzarVar = this.zzo;
            return zzarVar == null ? zzar.zzh() : zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public zzgxp zzC() {
            return zzgxp.zzw(this.zzl);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public String zzD() {
            return this.zzl;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public boolean zzE() {
            return (this.zzk & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public boolean zzF() {
            return (this.zzk & 32) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public boolean zzG() {
            return (this.zzk & 64) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public boolean zzH() {
            return (this.zzk & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public boolean zzI() {
            return (this.zzk & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public boolean zzJ() {
            return (this.zzk & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public boolean zzK() {
            return (this.zzk & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public boolean zzL() {
            return (this.zzk & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public int zza() {
            return this.zzp;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public int zzb() {
            return this.zzn;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public zzq zzx() {
            zzq zzb2 = zzq.zzb(this.zzu);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public zzq zzy() {
            zzq zzb2 = zzq.zzb(this.zzv);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzn
        public zzq zzz() {
            zzq zzb2 = zzq.zzb(this.zzw);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }
    }

    public interface zzn extends zzhaj {
        zzap zzA();

        zzar zzB();

        zzgxp zzC();

        String zzD();

        boolean zzE();

        boolean zzF();

        boolean zzG();

        boolean zzH();

        boolean zzI();

        boolean zzJ();

        boolean zzK();

        boolean zzL();

        int zza();

        int zzb();

        zzq zzx();

        zzq zzy();

        zzq zzz();
    }

    public final class zzo extends zzgyx<zzo, zza> implements zzp {
        public static final int zza = 5;
        public static final int zzb = 6;
        public static final int zzc = 7;
        public static final int zzd = 8;
        private static final zzo zze;
        private static volatile zzhaq<zzo> zzf;
        private int zzg;
        private int zzh;
        private zzar zzi;
        private String zzj = "";
        private String zzk = "";

        public final class zza extends zzgyr<zzo, zza> implements zzp {
            public zza zza() {
                f();
                zzo.a((zzo) this.f8682e);
                return this;
            }

            public zza zzb() {
                f();
                zzo.m((zzo) this.f8682e);
                return this;
            }

            public zza zzc() {
                f();
                zzo.h((zzo) this.f8682e);
                return this;
            }

            public zza zzd() {
                f();
                zzo.g((zzo) this.f8682e);
                return this;
            }

            public zza zze(zzar zzarVar) {
                f();
                zzo.b((zzo) this.f8682e, zzarVar);
                return this;
            }

            public zza zzf(String str) {
                f();
                zzo.f((zzo) this.f8682e, str);
                return this;
            }

            public zza zzg(zzgxp zzgxpVar) {
                f();
                zzo.e((zzo) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzh(zzar.zza zzaVar) {
                f();
                zzo.k((zzo) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzi(zzar zzarVar) {
                f();
                zzo.k((zzo) this.f8682e, zzarVar);
                return this;
            }

            public zza zzj(zzb zzbVar) {
                f();
                zzo.j((zzo) this.f8682e, zzbVar);
                return this;
            }

            public zza zzk(String str) {
                f();
                zzo.d((zzo) this.f8682e, str);
                return this;
            }

            public zza zzl(zzgxp zzgxpVar) {
                f();
                zzo.i((zzo) this.f8682e, zzgxpVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public zzb zzm() {
                return ((zzo) this.f8682e).zzm();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public zzar zzn() {
                return ((zzo) this.f8682e).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public zzgxp zzo() {
                return ((zzo) this.f8682e).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public zzgxp zzp() {
                return ((zzo) this.f8682e).zzp();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public String zzq() {
                return ((zzo) this.f8682e).zzq();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public String zzr() {
                return ((zzo) this.f8682e).zzr();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public boolean zzs() {
                return ((zzo) this.f8682e).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public boolean zzt() {
                return ((zzo) this.f8682e).zzt();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public boolean zzu() {
                return ((zzo) this.f8682e).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzp
            public boolean zzv() {
                return ((zzo) this.f8682e).zzv();
            }
        }

        public enum zzb implements zzgzb {
            PLATFORM_UNSPECIFIED(0),
            IOS(1),
            ANDROID(2);


            /* renamed from: a, reason: collision with root package name */
            public static final z f4714a = new z();
            public static final int zzd = 0;
            public static final int zze = 1;
            public static final int zzf = 2;
            private final int zzi;

            zzb(int i) {
                this.zzi = i;
            }

            public static zzb zzb(int i) {
                if (i == 0) {
                    return PLATFORM_UNSPECIFIED;
                }
                if (i == 1) {
                    return IOS;
                }
                if (i != 2) {
                    return null;
                }
                return ANDROID;
            }

            public static zzgzc<zzb> zzd() {
                return f4714a;
            }

            public static zzgzd zze() {
                return ae.f3934a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(zza());
            }

            @Override // com.google.android.gms.internal.ads.zzgzb
            public final int zza() {
                return this.zzi;
            }
        }

        static {
            zzo zzoVar = new zzo();
            zze = zzoVar;
            zzgyx.cb(zzo.class, zzoVar);
        }

        public static void a(zzo zzoVar) {
            zzoVar.zzg &= -5;
            zzoVar.zzj = zzd().zzq();
        }

        public static void b(zzo zzoVar, zzar zzarVar) {
            zzoVar.getClass();
            zzarVar.getClass();
            zzar zzarVar2 = zzoVar.zzi;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            zzoVar.zzi = zzarVar;
            zzoVar.zzg |= 2;
        }

        public static void d(zzo zzoVar, String str) {
            zzoVar.getClass();
            str.getClass();
            zzoVar.zzg |= 8;
            zzoVar.zzk = str;
        }

        public static void e(zzo zzoVar, zzgxp zzgxpVar) {
            zzoVar.getClass();
            zzoVar.zzj = zzgxpVar.zzx();
            zzoVar.zzg |= 4;
        }

        public static void f(zzo zzoVar, String str) {
            zzoVar.getClass();
            str.getClass();
            zzoVar.zzg |= 4;
            zzoVar.zzj = str;
        }

        public static void g(zzo zzoVar) {
            zzoVar.zzg &= -9;
            zzoVar.zzk = zzd().zzr();
        }

        public static void h(zzo zzoVar) {
            zzoVar.zzg &= -2;
            zzoVar.zzh = 0;
        }

        public static void i(zzo zzoVar, zzgxp zzgxpVar) {
            zzoVar.getClass();
            zzoVar.zzk = zzgxpVar.zzx();
            zzoVar.zzg |= 8;
        }

        public static void j(zzo zzoVar, zzb zzbVar) {
            zzoVar.getClass();
            zzoVar.zzh = zzbVar.zza();
            zzoVar.zzg |= 1;
        }

        public static void k(zzo zzoVar, zzar zzarVar) {
            zzoVar.getClass();
            zzarVar.getClass();
            zzoVar.zzi = zzarVar;
            zzoVar.zzg |= 2;
        }

        public static void m(zzo zzoVar) {
            zzoVar.zzi = null;
            zzoVar.zzg &= -3;
        }

        public static zzo zzA(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzo) zzgyx.bp(zze, bArr, zzgyhVar);
        }

        public static zzhaq<zzo> zzB() {
            return zze.zzbN();
        }

        public static zza zza() {
            return (zza) zze.cl();
        }

        public static zza zzb(zzo zzoVar) {
            return (zza) zze.ci(zzoVar);
        }

        public static zzo zzd() {
            return zze;
        }

        public static zzo zzf(InputStream inputStream) throws IOException {
            return (zzo) zzgyx.br(zze, inputStream);
        }

        public static zzo zzg(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzo) zzgyx.bo(zze, inputStream, zzgyhVar);
        }

        public static zzo zzh(zzgxp zzgxpVar) throws zzgzm {
            return (zzo) zzgyx.by(zze, zzgxpVar);
        }

        public static zzo zzi(zzgxv zzgxvVar) throws IOException {
            return (zzo) zzgyx.ca(zze, zzgxvVar);
        }

        public static zzo zzj(InputStream inputStream) throws IOException {
            return (zzo) zzgyx.ch(zze, inputStream);
        }

        public static zzo zzk(ByteBuffer byteBuffer) throws zzgzm {
            return (zzo) zzgyx.bx(zze, byteBuffer);
        }

        public static zzo zzl(byte[] bArr) throws zzgzm {
            return (zzo) zzgyx.cc(zze, bArr);
        }

        public static zzo zzw(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzo) zzgyx.bu(zze, zzgxpVar, zzgyhVar);
        }

        public static zzo zzx(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzo) zzgyx.bv(zze, zzgxvVar, zzgyhVar);
        }

        public static zzo zzy(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzo) zzgyx.bw(zze, inputStream, zzgyhVar);
        }

        public static zzo zzz(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzo) zzgyx.cf(zze, byteBuffer, zzgyhVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zze, "\u0004\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0000\u0005᠌\u0000\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzg", "zzh", zzb.zze(), "zzi", "zzj", "zzk"});
                case 3:
                    return new zzo();
                case 4:
                    return new zza(zze);
                case 5:
                    return zze;
                case 6:
                    zzhaq<zzo> zzhaqVar2 = zzf;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzo.class) {
                        try {
                            zzhaqVar = zzf;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zze);
                                zzf = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public zzb zzm() {
            zzb zzb2 = zzb.zzb(this.zzh);
            return zzb2 == null ? zzb.PLATFORM_UNSPECIFIED : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public zzar zzn() {
            zzar zzarVar = this.zzi;
            return zzarVar == null ? zzar.zzh() : zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public zzgxp zzo() {
            return zzgxp.zzw(this.zzj);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public zzgxp zzp() {
            return zzgxp.zzw(this.zzk);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public String zzq() {
            return this.zzj;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public String zzr() {
            return this.zzk;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public boolean zzs() {
            return (this.zzg & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public boolean zzt() {
            return (this.zzg & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public boolean zzu() {
            return (this.zzg & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzp
        public boolean zzv() {
            return (this.zzg & 8) != 0;
        }
    }

    public interface zzp extends zzhaj {
        zzo.zzb zzm();

        zzar zzn();

        zzgxp zzo();

        zzgxp zzp();

        String zzq();

        String zzr();

        boolean zzs();

        boolean zzt();

        boolean zzu();

        boolean zzv();
    }

    public enum zzq implements zzgzb {
        ENUM_FALSE(0),
        ENUM_TRUE(1),
        ENUM_UNKNOWN(1000);


        /* renamed from: a, reason: collision with root package name */
        public static final an f4716a = new an();
        public static final int zzd = 0;
        public static final int zze = 1;
        public static final int zzf = 1000;
        private final int zzi;

        zzq(int i) {
            this.zzi = i;
        }

        public static zzq zzb(int i) {
            if (i == 0) {
                return ENUM_FALSE;
            }
            if (i == 1) {
                return ENUM_TRUE;
            }
            if (i != 1000) {
                return null;
            }
            return ENUM_UNKNOWN;
        }

        public static zzgzc<zzq> zzd() {
            return f4716a;
        }

        public static zzgzd zze() {
            return y.f3998a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return Integer.toString(zza());
        }

        @Override // com.google.android.gms.internal.ads.zzgzb
        public final int zza() {
            return this.zzi;
        }
    }

    public final class zzr extends zzgyx<zzr, zza> implements zzs {
        public static final int zza = 7;
        public static final int zzb = 8;
        public static final int zzc = 9;
        public static final int zzd = 10;
        public static final int zze = 11;
        public static final int zzf = 12;
        public static final int zzg = 13;
        public static final int zzh = 14;
        public static final int zzi = 15;
        public static final int zzj = 16;
        private static final zzgzg<zzd.zza> zzk = new ag();
        private static final zzgzg<zzd.zza> zzl = new p();
        private static final zzr zzm;
        private static volatile zzhaq<zzr> zzn;
        private int zzA;
        private zzgzf zzB;
        private zzgzf zzC;
        private int zzo;
        private int zzp;
        private zzar zzv;
        private int zzw;
        private int zzz;
        private String zzu = "";
        private String zzx = "";
        private String zzy = "";

        public final class zza extends zzgyr<zzr, zza> implements zzs {
            public zza zzA(String str) {
                f();
                zzr.ad((zzr) this.f8682e, str);
                return this;
            }

            public zza zzB(zzgxp zzgxpVar) {
                f();
                zzr.ab((zzr) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzC(String str) {
                f();
                zzr.s((zzr) this.f8682e, str);
                return this;
            }

            public zza zzD(zzgxp zzgxpVar) {
                f();
                zzr.m((zzr) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzE(int i) {
                f();
                zzr.i((zzr) this.f8682e, i);
                return this;
            }

            public zza zzF(zzar.zza zzaVar) {
                f();
                zzr.f((zzr) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzG(zzar zzarVar) {
                f();
                zzr.f((zzr) this.f8682e, zzarVar);
                return this;
            }

            public zza zzH(zzo.zzb zzbVar) {
                f();
                zzr.x((zzr) this.f8682e, zzbVar);
                return this;
            }

            public zza zzI(int i, zzd.zza zzaVar) {
                f();
                zzr.aa((zzr) this.f8682e, i, zzaVar);
                return this;
            }

            public zza zzJ(int i, zzd.zza zzaVar) {
                f();
                zzr.k((zzr) this.f8682e, i, zzaVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public zzab.zzc zzK() {
                return ((zzr) this.f8682e).zzK();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public zzar zzL() {
                return ((zzr) this.f8682e).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public zzgxp zzM() {
                return ((zzr) this.f8682e).zzM();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public zzgxp zzN() {
                return ((zzr) this.f8682e).zzN();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public zzgxp zzO() {
                return ((zzr) this.f8682e).zzO();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public String zzP() {
                return ((zzr) this.f8682e).zzP();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public String zzQ() {
                return ((zzr) this.f8682e).zzQ();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public String zzR() {
                return ((zzr) this.f8682e).zzR();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public List<zzd.zza> zzS() {
                return ((zzr) this.f8682e).zzS();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public List<zzd.zza> zzT() {
                return ((zzr) this.f8682e).zzT();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public boolean zzU() {
                return ((zzr) this.f8682e).zzU();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public boolean zzV() {
                return ((zzr) this.f8682e).zzV();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public boolean zzW() {
                return ((zzr) this.f8682e).zzW();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public boolean zzX() {
                return ((zzr) this.f8682e).zzX();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public boolean zzY() {
                return ((zzr) this.f8682e).zzY();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public boolean zzZ() {
                return ((zzr) this.f8682e).zzZ();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public int zza() {
                return ((zzr) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public boolean zzaa() {
                return ((zzr) this.f8682e).zzaa();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public boolean zzab() {
                return ((zzr) this.f8682e).zzab();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public int zzb() {
                return ((zzr) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public int zzc() {
                return ((zzr) this.f8682e).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public zza.EnumC0207zza zzd() {
                return ((zzr) this.f8682e).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public zzd.zza zze(int i) {
                return ((zzr) this.f8682e).zze(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public zzd.zza zzf(int i) {
                return ((zzr) this.f8682e).zzf(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzs
            public zzo.zzb zzg() {
                return ((zzr) this.f8682e).zzg();
            }

            public zza zzh(Iterable<? extends zzd.zza> iterable) {
                f();
                zzr.a((zzr) this.f8682e, iterable);
                return this;
            }

            public zza zzi(Iterable<? extends zzd.zza> iterable) {
                f();
                zzr.z((zzr) this.f8682e, iterable);
                return this;
            }

            public zza zzj(zzd.zza zzaVar) {
                f();
                zzr.d((zzr) this.f8682e, zzaVar);
                return this;
            }

            public zza zzk(zzd.zza zzaVar) {
                f();
                zzr.ac((zzr) this.f8682e, zzaVar);
                return this;
            }

            public zza zzl() {
                f();
                zzr.r((zzr) this.f8682e);
                return this;
            }

            public zza zzm() {
                f();
                zzr.p((zzr) this.f8682e);
                return this;
            }

            public zza zzn() {
                f();
                zzr.e((zzr) this.f8682e);
                return this;
            }

            public zza zzo() {
                f();
                zzr.n((zzr) this.f8682e);
                return this;
            }

            public zza zzp() {
                f();
                zzr.h((zzr) this.f8682e);
                return this;
            }

            public zza zzq() {
                f();
                zzr.w((zzr) this.f8682e);
                return this;
            }

            public zza zzr() {
                f();
                zzr.u((zzr) this.f8682e);
                return this;
            }

            public zza zzs() {
                f();
                zzr.g((zzr) this.f8682e);
                return this;
            }

            public zza zzt() {
                f();
                zzr.t((zzr) this.f8682e);
                return this;
            }

            public zza zzu() {
                f();
                zzr.y((zzr) this.f8682e);
                return this;
            }

            public zza zzv(zzar zzarVar) {
                f();
                zzr.v((zzr) this.f8682e, zzarVar);
                return this;
            }

            public zza zzw(zza.EnumC0207zza enumC0207zza) {
                f();
                zzr.l((zzr) this.f8682e, enumC0207zza);
                return this;
            }

            public zza zzx(String str) {
                f();
                zzr.j((zzr) this.f8682e, str);
                return this;
            }

            public zza zzy(zzgxp zzgxpVar) {
                f();
                zzr.q((zzr) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzz(zzab.zzc zzcVar) {
                f();
                zzr.o((zzr) this.f8682e, zzcVar);
                return this;
            }
        }

        static {
            zzr zzrVar = new zzr();
            zzm = zzrVar;
            zzgyx.cb(zzr.class, zzrVar);
        }

        public zzr() {
            uo uoVar = uo.f20109c;
            this.zzB = uoVar;
            this.zzC = uoVar;
        }

        public static void a(zzr zzrVar, Iterable iterable) {
            zzgzf zzgzfVar = zzrVar.zzC;
            if (!zzgzfVar.zzc()) {
                zzrVar.zzC = zzgyx.cg(zzgzfVar);
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                zzrVar.zzC.zzi(((zzd.zza) it.next()).zza());
            }
        }

        public static void aa(zzr zzrVar, int i, zzd.zza zzaVar) {
            zzrVar.getClass();
            zzaVar.getClass();
            zzgzf zzgzfVar = zzrVar.zzC;
            if (!zzgzfVar.zzc()) {
                zzrVar.zzC = zzgyx.cg(zzgzfVar);
            }
            zzrVar.zzC.zze(i, zzaVar.zza());
        }

        public static void ab(zzr zzrVar, zzgxp zzgxpVar) {
            zzrVar.getClass();
            zzrVar.zzy = zzgxpVar.zzx();
            zzrVar.zzo |= 32;
        }

        public static void ac(zzr zzrVar, zzd.zza zzaVar) {
            zzrVar.getClass();
            zzaVar.getClass();
            zzgzf zzgzfVar = zzrVar.zzB;
            if (!zzgzfVar.zzc()) {
                zzrVar.zzB = zzgyx.cg(zzgzfVar);
            }
            zzrVar.zzB.zzi(zzaVar.zza());
        }

        public static void ad(zzr zzrVar, String str) {
            zzrVar.getClass();
            str.getClass();
            zzrVar.zzo |= 32;
            zzrVar.zzy = str;
        }

        public static void d(zzr zzrVar, zzd.zza zzaVar) {
            zzrVar.getClass();
            zzaVar.getClass();
            zzgzf zzgzfVar = zzrVar.zzC;
            if (!zzgzfVar.zzc()) {
                zzrVar.zzC = zzgyx.cg(zzgzfVar);
            }
            zzrVar.zzC.zzi(zzaVar.zza());
        }

        public static void e(zzr zzrVar) {
            zzrVar.zzo &= -65;
            zzrVar.zzz = 0;
        }

        public static void f(zzr zzrVar, zzar zzarVar) {
            zzrVar.getClass();
            zzarVar.getClass();
            zzrVar.zzv = zzarVar;
            zzrVar.zzo |= 4;
        }

        public static void g(zzr zzrVar) {
            zzrVar.zzo &= -9;
            zzrVar.zzw = 0;
        }

        public static void h(zzr zzrVar) {
            zzrVar.zzo &= -3;
            zzrVar.zzu = zzk().zzR();
        }

        public static void i(zzr zzrVar, int i) {
            zzrVar.zzo |= 1;
            zzrVar.zzp = i;
        }

        public static void j(zzr zzrVar, String str) {
            zzrVar.getClass();
            str.getClass();
            zzrVar.zzo |= 16;
            zzrVar.zzx = str;
        }

        public static void k(zzr zzrVar, int i, zzd.zza zzaVar) {
            zzrVar.getClass();
            zzaVar.getClass();
            zzgzf zzgzfVar = zzrVar.zzB;
            if (!zzgzfVar.zzc()) {
                zzrVar.zzB = zzgyx.cg(zzgzfVar);
            }
            zzrVar.zzB.zze(i, zzaVar.zza());
        }

        public static void l(zzr zzrVar, zza.EnumC0207zza enumC0207zza) {
            zzrVar.getClass();
            zzrVar.zzA = enumC0207zza.zza();
            zzrVar.zzo |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        }

        public static void m(zzr zzrVar, zzgxp zzgxpVar) {
            zzrVar.getClass();
            zzrVar.zzu = zzgxpVar.zzx();
            zzrVar.zzo |= 2;
        }

        public static void n(zzr zzrVar) {
            zzrVar.zzo &= -33;
            zzrVar.zzy = zzk().zzQ();
        }

        public static void o(zzr zzrVar, zzab.zzc zzcVar) {
            zzrVar.getClass();
            zzrVar.zzz = zzcVar.zza();
            zzrVar.zzo |= 64;
        }

        public static void p(zzr zzrVar) {
            zzrVar.zzo &= -17;
            zzrVar.zzx = zzk().zzP();
        }

        public static void q(zzr zzrVar, zzgxp zzgxpVar) {
            zzrVar.getClass();
            zzrVar.zzx = zzgxpVar.zzx();
            zzrVar.zzo |= 16;
        }

        public static void r(zzr zzrVar) {
            zzrVar.zzo &= -129;
            zzrVar.zzA = 0;
        }

        public static void s(zzr zzrVar, String str) {
            zzrVar.getClass();
            str.getClass();
            zzrVar.zzo |= 2;
            zzrVar.zzu = str;
        }

        public static void t(zzr zzrVar) {
            zzrVar.getClass();
            zzrVar.zzC = uo.f20109c;
        }

        public static void u(zzr zzrVar) {
            zzrVar.zzv = null;
            zzrVar.zzo &= -5;
        }

        public static void v(zzr zzrVar, zzar zzarVar) {
            zzrVar.getClass();
            zzarVar.getClass();
            zzar zzarVar2 = zzrVar.zzv;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            zzrVar.zzv = zzarVar;
            zzrVar.zzo |= 4;
        }

        public static void w(zzr zzrVar) {
            zzrVar.zzo &= -2;
            zzrVar.zzp = 0;
        }

        public static void x(zzr zzrVar, zzo.zzb zzbVar) {
            zzrVar.getClass();
            zzrVar.zzw = zzbVar.zza();
            zzrVar.zzo |= 8;
        }

        public static void y(zzr zzrVar) {
            zzrVar.getClass();
            zzrVar.zzB = uo.f20109c;
        }

        public static void z(zzr zzrVar, Iterable iterable) {
            zzgzf zzgzfVar = zzrVar.zzB;
            if (!zzgzfVar.zzc()) {
                zzrVar.zzB = zzgyx.cg(zzgzfVar);
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                zzrVar.zzB.zzi(((zzd.zza) it.next()).zza());
            }
        }

        public static zza zzh() {
            return (zza) zzm.cl();
        }

        public static zza zzi(zzr zzrVar) {
            return (zza) zzm.ci(zzrVar);
        }

        public static zzr zzk() {
            return zzm;
        }

        public static zzr zzl(InputStream inputStream) throws IOException {
            return (zzr) zzgyx.br(zzm, inputStream);
        }

        public static zzr zzm(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzr) zzgyx.bo(zzm, inputStream, zzgyhVar);
        }

        public static zzr zzn(zzgxp zzgxpVar) throws zzgzm {
            return (zzr) zzgyx.by(zzm, zzgxpVar);
        }

        public static zzr zzo(zzgxv zzgxvVar) throws IOException {
            return (zzr) zzgyx.ca(zzm, zzgxvVar);
        }

        public static zzr zzp(InputStream inputStream) throws IOException {
            return (zzr) zzgyx.ch(zzm, inputStream);
        }

        public static zzr zzq(ByteBuffer byteBuffer) throws zzgzm {
            return (zzr) zzgyx.bx(zzm, byteBuffer);
        }

        public static zzr zzr(byte[] bArr) throws zzgzm {
            return (zzr) zzgyx.cc(zzm, bArr);
        }

        public static zzr zzs(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzr) zzgyx.bu(zzm, zzgxpVar, zzgyhVar);
        }

        public static zzr zzt(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzr) zzgyx.bv(zzm, zzgxvVar, zzgyhVar);
        }

        public static zzr zzu(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzr) zzgyx.bw(zzm, inputStream, zzgyhVar);
        }

        public static zzr zzv(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzr) zzgyx.cf(zzm, byteBuffer, zzgyhVar);
        }

        public static zzr zzw(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzr) zzgyx.bp(zzm, bArr, zzgyhVar);
        }

        public static zzhaq<zzr> zzx() {
            return zzm.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzm, "\u0004\n\u0000\u0001\u0007\u0010\n\u0000\u0002\u0000\u0007င\u0000\bဈ\u0001\tဉ\u0002\n᠌\u0003\u000bဈ\u0004\fဈ\u0005\r᠌\u0006\u000e᠌\u0007\u000fࠞ\u0010ࠞ", new Object[]{"zzo", "zzp", "zzu", "zzv", "zzw", zzo.zzb.zze(), "zzx", "zzy", "zzz", zzab.zzc.zze(), "zzA", zza.EnumC0207zza.zze(), "zzB", zzd.zza.zze(), "zzC", zzd.zza.zze()});
                case 3:
                    return new zzr();
                case 4:
                    return new zza(zzm);
                case 5:
                    return zzm;
                case 6:
                    zzhaq<zzr> zzhaqVar2 = zzn;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzr.class) {
                        try {
                            zzhaqVar = zzn;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzm);
                                zzn = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public zzab.zzc zzK() {
            zzab.zzc zzb2 = zzab.zzc.zzb(this.zzz);
            return zzb2 == null ? zzab.zzc.NETWORKTYPE_UNSPECIFIED : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public zzar zzL() {
            zzar zzarVar = this.zzv;
            return zzarVar == null ? zzar.zzh() : zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public zzgxp zzM() {
            return zzgxp.zzw(this.zzx);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public zzgxp zzN() {
            return zzgxp.zzw(this.zzy);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public zzgxp zzO() {
            return zzgxp.zzw(this.zzu);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public String zzP() {
            return this.zzx;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public String zzQ() {
            return this.zzy;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public String zzR() {
            return this.zzu;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public List<zzd.zza> zzS() {
            return new zzgzh(this.zzC, zzl);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public List<zzd.zza> zzT() {
            return new zzgzh(this.zzB, zzk);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public boolean zzU() {
            return (this.zzo & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public boolean zzV() {
            return (this.zzo & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public boolean zzW() {
            return (this.zzo & 64) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public boolean zzX() {
            return (this.zzo & 32) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public boolean zzY() {
            return (this.zzo & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public boolean zzZ() {
            return (this.zzo & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public int zza() {
            return this.zzp;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public boolean zzaa() {
            return (this.zzo & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public boolean zzab() {
            return (this.zzo & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public int zzb() {
            return this.zzC.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public int zzc() {
            return this.zzB.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public zza.EnumC0207zza zzd() {
            zza.EnumC0207zza zzb2 = zza.EnumC0207zza.zzb(this.zzA);
            return zzb2 == null ? zza.EnumC0207zza.AD_INITIATER_UNSPECIFIED : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public zzd.zza zze(int i) {
            zzd.zza zzb2 = zzd.zza.zzb(this.zzC.zzd(i));
            return zzb2 == null ? zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public zzd.zza zzf(int i) {
            zzd.zza zzb2 = zzd.zza.zzb(this.zzB.zzd(i));
            return zzb2 == null ? zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzs
        public zzo.zzb zzg() {
            zzo.zzb zzb2 = zzo.zzb.zzb(this.zzw);
            return zzb2 == null ? zzo.zzb.PLATFORM_UNSPECIFIED : zzb2;
        }
    }

    public interface zzs extends zzhaj {
        zzab.zzc zzK();

        zzar zzL();

        zzgxp zzM();

        zzgxp zzN();

        zzgxp zzO();

        String zzP();

        String zzQ();

        String zzR();

        List<zzd.zza> zzS();

        List<zzd.zza> zzT();

        boolean zzU();

        boolean zzV();

        boolean zzW();

        boolean zzX();

        boolean zzY();

        boolean zzZ();

        int zza();

        boolean zzaa();

        boolean zzab();

        int zzb();

        int zzc();

        zza.EnumC0207zza zzd();

        zzd.zza zze(int i);

        zzd.zza zzf(int i);

        zzo.zzb zzg();
    }

    public final class zzt extends zzgyx<zzt, zza> implements zzu {
        public static final int zza = 9;
        public static final int zzb = 10;
        public static final int zzc = 11;
        public static final int zzd = 12;
        public static final int zze = 13;
        public static final int zzf = 14;
        public static final int zzg = 15;
        public static final int zzh = 16;
        public static final int zzi = 17;
        public static final int zzj = 18;
        public static final int zzk = 19;
        public static final int zzl = 20;
        public static final int zzm = 21;
        private static final zzt zzn;
        private static volatile zzhaq<zzt> zzo;
        private zzm zzA;
        private zzo zzB;
        private zzab zzC;
        private zza zzD;
        private zzaf zzE;
        private zzbl zzF;
        private zzb zzG;
        private int zzp;
        private int zzu;
        private int zzw;
        private zzar zzy;
        private String zzv = "";
        private int zzx = 1000;
        private zzgzi zzz = ayh.f11054c;

        public final class zza extends zzgyr<zzt, zza> implements zzu {
            public zza zzA(zzm zzmVar) {
                f();
                zzt.am((zzt) this.f8682e, zzmVar);
                return this;
            }

            public zza zzB(zzo zzoVar) {
                f();
                zzt.ak((zzt) this.f8682e, zzoVar);
                return this;
            }

            public zza zzC(zzab zzabVar) {
                f();
                zzt.w((zzt) this.f8682e, zzabVar);
                return this;
            }

            public zza zzD(zzaf zzafVar) {
                f();
                zzt.p((zzt) this.f8682e, zzafVar);
                return this;
            }

            public zza zzE(zzar zzarVar) {
                f();
                zzt.l((zzt) this.f8682e, zzarVar);
                return this;
            }

            public zza zzF(zzbl zzblVar) {
                f();
                zzt.h((zzt) this.f8682e, zzblVar);
                return this;
            }

            public zza zzG(zza.zzb zzbVar) {
                f();
                zzt.ad((zzt) this.f8682e, zzbVar.zzbr());
                return this;
            }

            public zza zzH(zza zzaVar) {
                f();
                zzt.ad((zzt) this.f8682e, zzaVar);
                return this;
            }

            public zza zzI(zzb.zzc zzcVar) {
                f();
                zzt.ah((zzt) this.f8682e, zzcVar.zzbr());
                return this;
            }

            public zza zzJ(zzb zzbVar) {
                f();
                zzt.ah((zzt) this.f8682e, zzbVar);
                return this;
            }

            public zza zzK(zzm.zza zzaVar) {
                f();
                zzt.n((zzt) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzL(zzm zzmVar) {
                f();
                zzt.n((zzt) this.f8682e, zzmVar);
                return this;
            }

            public zza zzM(zzo.zza zzaVar) {
                f();
                zzt.ai((zzt) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzN(zzo zzoVar) {
                f();
                zzt.ai((zzt) this.f8682e, zzoVar);
                return this;
            }

            public zza zzO(String str) {
                f();
                zzt.g((zzt) this.f8682e, str);
                return this;
            }

            public zza zzP(zzgxp zzgxpVar) {
                f();
                zzt.z((zzt) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzQ(int i, long j) {
                f();
                zzt.k((zzt) this.f8682e, i, j);
                return this;
            }

            public zza zzR(zzq zzqVar) {
                f();
                zzt.ab((zzt) this.f8682e, zzqVar);
                return this;
            }

            public zza zzS(int i) {
                f();
                zzt.aj((zzt) this.f8682e, i);
                return this;
            }

            public zza zzT(zzab.zza zzaVar) {
                f();
                zzt.a((zzt) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzU(zzab zzabVar) {
                f();
                zzt.a((zzt) this.f8682e, zzabVar);
                return this;
            }

            public zza zzV(zzaf.zzc zzcVar) {
                f();
                zzt.d((zzt) this.f8682e, zzcVar.zzbr());
                return this;
            }

            public zza zzW(zzaf zzafVar) {
                f();
                zzt.d((zzt) this.f8682e, zzafVar);
                return this;
            }

            public zza zzX(zzar.zza zzaVar) {
                f();
                zzt.b((zzt) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzY(zzar zzarVar) {
                f();
                zzt.b((zzt) this.f8682e, zzarVar);
                return this;
            }

            public zza zzZ(int i) {
                f();
                zzt.ag((zzt) this.f8682e, i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public int zza() {
                return ((zzt) this.f8682e).zza();
            }

            public zza zzaa(zzbl.zza zzaVar) {
                f();
                zzt.u((zzt) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzab(zzbl zzblVar) {
                f();
                zzt.u((zzt) this.f8682e, zzblVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zzab zzac() {
                return ((zzt) this.f8682e).zzac();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zzaf zzad() {
                return ((zzt) this.f8682e).zzad();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zzar zzae() {
                return ((zzt) this.f8682e).zzae();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zzbl zzaf() {
                return ((zzt) this.f8682e).zzaf();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zzgxp zzag() {
                return ((zzt) this.f8682e).zzag();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public String zzah() {
                return ((zzt) this.f8682e).zzah();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public List<Long> zzai() {
                return Collections.unmodifiableList(((zzt) this.f8682e).zzai());
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzaj() {
                return ((zzt) this.f8682e).zzaj();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzak() {
                return ((zzt) this.f8682e).zzak();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzal() {
                return ((zzt) this.f8682e).zzal();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzam() {
                return ((zzt) this.f8682e).zzam();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzan() {
                return ((zzt) this.f8682e).zzan();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzao() {
                return ((zzt) this.f8682e).zzao();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzap() {
                return ((zzt) this.f8682e).zzap();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzaq() {
                return ((zzt) this.f8682e).zzaq();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzar() {
                return ((zzt) this.f8682e).zzar();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzas() {
                return ((zzt) this.f8682e).zzas();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzat() {
                return ((zzt) this.f8682e).zzat();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public boolean zzau() {
                return ((zzt) this.f8682e).zzau();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public int zzb() {
                return ((zzt) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public int zzc() {
                return ((zzt) this.f8682e).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public long zzd(int i) {
                return ((zzt) this.f8682e).zzd(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zza zze() {
                return ((zzt) this.f8682e).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zzb zzf() {
                return ((zzt) this.f8682e).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zzm zzg() {
                return ((zzt) this.f8682e).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zzo zzh() {
                return ((zzt) this.f8682e).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzu
            public zzq zzi() {
                return ((zzt) this.f8682e).zzi();
            }

            public zza zzj(Iterable<? extends Long> iterable) {
                f();
                zzt.e((zzt) this.f8682e, iterable);
                return this;
            }

            public zza zzk(long j) {
                f();
                zzt.al((zzt) this.f8682e, j);
                return this;
            }

            public zza zzl() {
                f();
                zzt.v((zzt) this.f8682e);
                return this;
            }

            public zza zzm() {
                f();
                zzt.s((zzt) this.f8682e);
                return this;
            }

            public zza zzn() {
                f();
                zzt.f((zzt) this.f8682e);
                return this;
            }

            public zza zzo() {
                f();
                zzt.q((zzt) this.f8682e);
                return this;
            }

            public zza zzp() {
                f();
                zzt.j((zzt) this.f8682e);
                return this;
            }

            public zza zzq() {
                f();
                zzt.ac((zzt) this.f8682e);
                return this;
            }

            public zza zzr() {
                f();
                zzt.y((zzt) this.f8682e);
                return this;
            }

            public zza zzs() {
                f();
                zzt.i((zzt) this.f8682e);
                return this;
            }

            public zza zzt() {
                f();
                zzt.x((zzt) this.f8682e);
                return this;
            }

            public zza zzu() {
                f();
                zzt.af((zzt) this.f8682e);
                return this;
            }

            public zza zzv() {
                f();
                zzt.aa((zzt) this.f8682e);
                return this;
            }

            public zza zzw() {
                f();
                zzt.o((zzt) this.f8682e);
                return this;
            }

            public zza zzx() {
                f();
                zzt.m((zzt) this.f8682e);
                return this;
            }

            public zza zzy(zza zzaVar) {
                f();
                zzt.t((zzt) this.f8682e, zzaVar);
                return this;
            }

            public zza zzz(zzb zzbVar) {
                f();
                zzt.r((zzt) this.f8682e, zzbVar);
                return this;
            }
        }

        static {
            zzt zztVar = new zzt();
            zzn = zztVar;
            zzgyx.cb(zzt.class, zztVar);
        }

        public static void a(zzt zztVar, zzab zzabVar) {
            zztVar.getClass();
            zzabVar.getClass();
            zztVar.zzC = zzabVar;
            zztVar.zzp |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        }

        public static void aa(zzt zztVar) {
            zztVar.zzy = null;
            zztVar.zzp &= -17;
        }

        public static void ab(zzt zztVar, zzq zzqVar) {
            zztVar.getClass();
            zztVar.zzx = zzqVar.zza();
            zztVar.zzp |= 8;
        }

        public static void ac(zzt zztVar) {
            zztVar.getClass();
            zztVar.zzz = ayh.f11054c;
        }

        public static void ad(zzt zztVar, zza zzaVar) {
            zztVar.getClass();
            zzaVar.getClass();
            zztVar.zzD = zzaVar;
            zztVar.zzp |= 256;
        }

        public static void af(zzt zztVar) {
            zztVar.zzE = null;
            zztVar.zzp &= -513;
        }

        public static void ag(zzt zztVar, int i) {
            zztVar.zzp |= 4;
            zztVar.zzw = i;
        }

        public static void ah(zzt zztVar, zzb zzbVar) {
            zztVar.getClass();
            zzbVar.getClass();
            zztVar.zzG = zzbVar;
            zztVar.zzp |= 2048;
        }

        public static void ai(zzt zztVar, zzo zzoVar) {
            zztVar.getClass();
            zzoVar.getClass();
            zztVar.zzB = zzoVar;
            zztVar.zzp |= 64;
        }

        public static void aj(zzt zztVar, int i) {
            zztVar.zzp |= 1;
            zztVar.zzu = i;
        }

        public static void ak(zzt zztVar, zzo zzoVar) {
            zztVar.getClass();
            zzoVar.getClass();
            zzo zzoVar2 = zztVar.zzB;
            if (zzoVar2 != null && zzoVar2 != zzo.zzd()) {
                zzo.zza zzb2 = zzo.zzb(zzoVar2);
                zzb2.zzbj(zzoVar);
                zzoVar = zzb2.zzbs();
            }
            zztVar.zzB = zzoVar;
            zztVar.zzp |= 64;
        }

        public static void al(zzt zztVar, long j) {
            zzgzi zzgziVar = zztVar.zzz;
            if (!zzgziVar.zzc()) {
                int size = zzgziVar.size();
                zztVar.zzz = zzgziVar.zzf(size == 0 ? 10 : size + size);
            }
            zztVar.zzz.zzg(j);
        }

        public static void am(zzt zztVar, zzm zzmVar) {
            zztVar.getClass();
            zzmVar.getClass();
            zzm zzmVar2 = zztVar.zzA;
            if (zzmVar2 != null && zzmVar2 != zzm.zzg()) {
                zzm.zza zzd2 = zzm.zzd(zzmVar2);
                zzd2.zzbj(zzmVar);
                zzmVar = zzd2.zzbs();
            }
            zztVar.zzA = zzmVar;
            zztVar.zzp |= 32;
        }

        public static void b(zzt zztVar, zzar zzarVar) {
            zztVar.getClass();
            zzarVar.getClass();
            zztVar.zzy = zzarVar;
            zztVar.zzp |= 16;
        }

        public static void d(zzt zztVar, zzaf zzafVar) {
            zztVar.getClass();
            zzafVar.getClass();
            zztVar.zzE = zzafVar;
            zztVar.zzp |= 512;
        }

        public static void e(zzt zztVar, Iterable iterable) {
            zzgzi zzgziVar = zztVar.zzz;
            if (!zzgziVar.zzc()) {
                int size = zzgziVar.size();
                zztVar.zzz = zzgziVar.zzf(size == 0 ? 10 : size + size);
            }
            zzgwy.bi(iterable, zztVar.zzz);
        }

        public static void f(zzt zztVar) {
            zztVar.zzA = null;
            zztVar.zzp &= -33;
        }

        public static void g(zzt zztVar, String str) {
            zztVar.getClass();
            str.getClass();
            zztVar.zzp |= 2;
            zztVar.zzv = str;
        }

        public static void h(zzt zztVar, zzbl zzblVar) {
            zztVar.getClass();
            zzblVar.getClass();
            zzbl zzblVar2 = zztVar.zzF;
            if (zzblVar2 != null && zzblVar2 != zzbl.zzi()) {
                zzbl.zza zzc2 = zzbl.zzc(zzblVar2);
                zzc2.zzbj(zzblVar);
                zzblVar = zzc2.zzbs();
            }
            zztVar.zzF = zzblVar;
            zztVar.zzp |= 1024;
        }

        public static void i(zzt zztVar) {
            zztVar.zzp &= -2;
            zztVar.zzu = 0;
        }

        public static void j(zzt zztVar) {
            zztVar.zzp &= -3;
            zztVar.zzv = zzm().zzah();
        }

        public static void k(zzt zztVar, int i, long j) {
            zzgzi zzgziVar = zztVar.zzz;
            if (!zzgziVar.zzc()) {
                int size = zzgziVar.size();
                zztVar.zzz = zzgziVar.zzf(size == 0 ? 10 : size + size);
            }
            zztVar.zzz.zzd(i, j);
        }

        public static void l(zzt zztVar, zzar zzarVar) {
            zztVar.getClass();
            zzarVar.getClass();
            zzar zzarVar2 = zztVar.zzy;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            zztVar.zzy = zzarVar;
            zztVar.zzp |= 16;
        }

        public static void m(zzt zztVar) {
            zztVar.zzF = null;
            zztVar.zzp &= -1025;
        }

        public static void n(zzt zztVar, zzm zzmVar) {
            zztVar.getClass();
            zzmVar.getClass();
            zztVar.zzA = zzmVar;
            zztVar.zzp |= 32;
        }

        public static void o(zzt zztVar) {
            zztVar.zzp &= -5;
            zztVar.zzw = 0;
        }

        public static void p(zzt zztVar, zzaf zzafVar) {
            zztVar.getClass();
            zzafVar.getClass();
            zzaf zzafVar2 = zztVar.zzE;
            if (zzafVar2 != null && zzafVar2 != zzaf.zzl()) {
                zzaf.zzc zzj2 = zzaf.zzj(zzafVar2);
                zzj2.zzbj(zzafVar);
                zzafVar = zzj2.zzbs();
            }
            zztVar.zzE = zzafVar;
            zztVar.zzp |= 512;
        }

        public static void q(zzt zztVar) {
            zztVar.zzB = null;
            zztVar.zzp &= -65;
        }

        public static void r(zzt zztVar, zzb zzbVar) {
            zztVar.getClass();
            zzbVar.getClass();
            zzb zzbVar2 = zztVar.zzG;
            if (zzbVar2 != null && zzbVar2 != zzb.zzh()) {
                zzb.zzc zzf2 = zzb.zzf(zzbVar2);
                zzf2.zzbj(zzbVar);
                zzbVar = zzf2.zzbs();
            }
            zztVar.zzG = zzbVar;
            zztVar.zzp |= 2048;
        }

        public static void s(zzt zztVar) {
            zztVar.zzG = null;
            zztVar.zzp &= -2049;
        }

        public static void t(zzt zztVar, zza zzaVar) {
            zztVar.getClass();
            zzaVar.getClass();
            zza zzaVar2 = zztVar.zzD;
            if (zzaVar2 != null && zzaVar2 != zza.zzh()) {
                zza.zzb zzf2 = zza.zzf(zzaVar2);
                zzf2.zzbj(zzaVar);
                zzaVar = zzf2.zzbs();
            }
            zztVar.zzD = zzaVar;
            zztVar.zzp |= 256;
        }

        public static void u(zzt zztVar, zzbl zzblVar) {
            zztVar.getClass();
            zzblVar.getClass();
            zztVar.zzF = zzblVar;
            zztVar.zzp |= 1024;
        }

        public static void v(zzt zztVar) {
            zztVar.zzD = null;
            zztVar.zzp &= -257;
        }

        public static void w(zzt zztVar, zzab zzabVar) {
            zztVar.getClass();
            zzabVar.getClass();
            zzab zzabVar2 = zztVar.zzC;
            if (zzabVar2 != null && zzabVar2 != zzab.zzd()) {
                zzab.zza zzb2 = zzab.zzb(zzabVar2);
                zzb2.zzbj(zzabVar);
                zzabVar = zzb2.zzbs();
            }
            zztVar.zzC = zzabVar;
            zztVar.zzp |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        }

        public static void x(zzt zztVar) {
            zztVar.zzC = null;
            zztVar.zzp &= -129;
        }

        public static void y(zzt zztVar) {
            zztVar.zzp &= -9;
            zztVar.zzx = 1000;
        }

        public static void z(zzt zztVar, zzgxp zzgxpVar) {
            zztVar.getClass();
            zztVar.zzv = zzgxpVar.zzx();
            zztVar.zzp |= 2;
        }

        public static zza zzj() {
            return (zza) zzn.cl();
        }

        public static zza zzk(zzt zztVar) {
            return (zza) zzn.ci(zztVar);
        }

        public static zzt zzm() {
            return zzn;
        }

        public static zzt zzn(InputStream inputStream) throws IOException {
            return (zzt) zzgyx.br(zzn, inputStream);
        }

        public static zzt zzo(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzt) zzgyx.bo(zzn, inputStream, zzgyhVar);
        }

        public static zzt zzp(zzgxp zzgxpVar) throws zzgzm {
            return (zzt) zzgyx.by(zzn, zzgxpVar);
        }

        public static zzt zzq(zzgxv zzgxvVar) throws IOException {
            return (zzt) zzgyx.ca(zzn, zzgxvVar);
        }

        public static zzt zzr(InputStream inputStream) throws IOException {
            return (zzt) zzgyx.ch(zzn, inputStream);
        }

        public static zzt zzs(ByteBuffer byteBuffer) throws zzgzm {
            return (zzt) zzgyx.bx(zzn, byteBuffer);
        }

        public static zzt zzt(byte[] bArr) throws zzgzm {
            return (zzt) zzgyx.cc(zzn, bArr);
        }

        public static zzt zzu(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzt) zzgyx.bu(zzn, zzgxpVar, zzgyhVar);
        }

        public static zzt zzv(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzt) zzgyx.bv(zzn, zzgxvVar, zzgyhVar);
        }

        public static zzt zzw(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzt) zzgyx.bw(zzn, inputStream, zzgyhVar);
        }

        public static zzt zzx(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzt) zzgyx.cf(zzn, byteBuffer, zzgyhVar);
        }

        public static zzt zzy(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzt) zzgyx.bp(zzn, bArr, zzgyhVar);
        }

        public static zzhaq<zzt> zzz() {
            return zzn.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzn, "\u0004\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\tင\u0000\nဈ\u0001\u000bဋ\u0002\f᠌\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzp", "zzu", "zzv", "zzw", "zzx", zzq.zze(), "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzG"});
                case 3:
                    return new zzt();
                case 4:
                    return new zza(zzn);
                case 5:
                    return zzn;
                case 6:
                    zzhaq<zzt> zzhaqVar2 = zzo;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzt.class) {
                        try {
                            zzhaqVar = zzo;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzn);
                                zzo = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public int zza() {
            return this.zzz.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zzab zzac() {
            zzab zzabVar = this.zzC;
            return zzabVar == null ? zzab.zzd() : zzabVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zzaf zzad() {
            zzaf zzafVar = this.zzE;
            return zzafVar == null ? zzaf.zzl() : zzafVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zzar zzae() {
            zzar zzarVar = this.zzy;
            return zzarVar == null ? zzar.zzh() : zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zzbl zzaf() {
            zzbl zzblVar = this.zzF;
            return zzblVar == null ? zzbl.zzi() : zzblVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zzgxp zzag() {
            return zzgxp.zzw(this.zzv);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public String zzah() {
            return this.zzv;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public List<Long> zzai() {
            return this.zzz;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzaj() {
            return (this.zzp & 256) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzak() {
            return (this.zzp & 2048) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzal() {
            return (this.zzp & 32) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzam() {
            return (this.zzp & 64) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzan() {
            return (this.zzp & 2) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzao() {
            return (this.zzp & 8) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzap() {
            return (this.zzp & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzaq() {
            return (this.zzp & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzar() {
            return (this.zzp & 512) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzas() {
            return (this.zzp & 16) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzat() {
            return (this.zzp & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public boolean zzau() {
            return (this.zzp & 1024) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public int zzb() {
            return this.zzu;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public int zzc() {
            return this.zzw;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public long zzd(int i) {
            return this.zzz.zza(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zza zze() {
            zza zzaVar = this.zzD;
            return zzaVar == null ? zza.zzh() : zzaVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zzb zzf() {
            zzb zzbVar = this.zzG;
            return zzbVar == null ? zzb.zzh() : zzbVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zzm zzg() {
            zzm zzmVar = this.zzA;
            return zzmVar == null ? zzm.zzg() : zzmVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zzo zzh() {
            zzo zzoVar = this.zzB;
            return zzoVar == null ? zzo.zzd() : zzoVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzu
        public zzq zzi() {
            zzq zzb2 = zzq.zzb(this.zzx);
            return zzb2 == null ? zzq.ENUM_UNKNOWN : zzb2;
        }
    }

    public interface zzu extends zzhaj {
        int zza();

        zzab zzac();

        zzaf zzad();

        zzar zzae();

        zzbl zzaf();

        zzgxp zzag();

        String zzah();

        List<Long> zzai();

        boolean zzaj();

        boolean zzak();

        boolean zzal();

        boolean zzam();

        boolean zzan();

        boolean zzao();

        boolean zzap();

        boolean zzaq();

        boolean zzar();

        boolean zzas();

        boolean zzat();

        boolean zzau();

        int zzb();

        int zzc();

        long zzd(int i);

        zza zze();

        zzb zzf();

        zzm zzg();

        zzo zzh();

        zzq zzi();
    }

    public final class zzv extends zzgyx<zzv, zza> implements zzw {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        private static final zzv zze;
        private static volatile zzhaq<zzv> zzf;
        private int zzg;
        private int zzi;
        private zzap zzk;
        private String zzh = "";
        private zzgzf zzj = uo.f20109c;

        public final class zza extends zzgyr<zzv, zza> implements zzw {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public int zza(int i) {
                return ((zzv) this.f8682e).zza(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public int zzb() {
                return ((zzv) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public zzq zzc() {
                return ((zzv) this.f8682e).zzc();
            }

            public zza zzd(Iterable<? extends Integer> iterable) {
                f();
                zzv.a((zzv) this.f8682e, iterable);
                return this;
            }

            public zza zze(int i) {
                f();
                zzv.n((zzv) this.f8682e, i);
                return this;
            }

            public zza zzf() {
                f();
                zzv.h((zzv) this.f8682e);
                return this;
            }

            public zza zzg() {
                f();
                zzv.g((zzv) this.f8682e);
                return this;
            }

            public zza zzh() {
                f();
                zzv.b((zzv) this.f8682e);
                return this;
            }

            public zza zzi() {
                f();
                zzv.f((zzv) this.f8682e);
                return this;
            }

            public zza zzj(zzap zzapVar) {
                f();
                zzv.e((zzv) this.f8682e, zzapVar);
                return this;
            }

            public zza zzk(String str) {
                f();
                zzv.l((zzv) this.f8682e, str);
                return this;
            }

            public zza zzl(zzgxp zzgxpVar) {
                f();
                zzv.j((zzv) this.f8682e, zzgxpVar);
                return this;
            }

            public zza zzm(zzap.zza zzaVar) {
                f();
                zzv.d((zzv) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzn(zzap zzapVar) {
                f();
                zzv.d((zzv) this.f8682e, zzapVar);
                return this;
            }

            public zza zzo(zzq zzqVar) {
                f();
                zzv.i((zzv) this.f8682e, zzqVar);
                return this;
            }

            public zza zzp(int i, int i2) {
                f();
                zzv.m((zzv) this.f8682e, i, i2);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public zzap zzq() {
                return ((zzv) this.f8682e).zzq();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public zzgxp zzr() {
                return ((zzv) this.f8682e).zzr();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public String zzs() {
                return ((zzv) this.f8682e).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public List<Integer> zzt() {
                return Collections.unmodifiableList(((zzv) this.f8682e).zzt());
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public boolean zzu() {
                return ((zzv) this.f8682e).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public boolean zzv() {
                return ((zzv) this.f8682e).zzv();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzw
            public boolean zzw() {
                return ((zzv) this.f8682e).zzw();
            }
        }

        static {
            zzv zzvVar = new zzv();
            zze = zzvVar;
            zzgyx.cb(zzv.class, zzvVar);
        }

        public static void a(zzv zzvVar, Iterable iterable) {
            zzgzf zzgzfVar = zzvVar.zzj;
            if (!zzgzfVar.zzc()) {
                zzvVar.zzj = zzgyx.cg(zzgzfVar);
            }
            zzgwy.bi(iterable, zzvVar.zzj);
        }

        public static void b(zzv zzvVar) {
            zzvVar.zzg &= -3;
            zzvVar.zzi = 0;
        }

        public static void d(zzv zzvVar, zzap zzapVar) {
            zzvVar.getClass();
            zzapVar.getClass();
            zzvVar.zzk = zzapVar;
            zzvVar.zzg |= 4;
        }

        public static void e(zzv zzvVar, zzap zzapVar) {
            zzvVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzvVar.zzk;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzvVar.zzk = zzapVar;
            zzvVar.zzg |= 4;
        }

        public static void f(zzv zzvVar) {
            zzvVar.getClass();
            zzvVar.zzj = uo.f20109c;
        }

        public static void g(zzv zzvVar) {
            zzvVar.zzk = null;
            zzvVar.zzg &= -5;
        }

        public static void h(zzv zzvVar) {
            zzvVar.zzg &= -2;
            zzvVar.zzh = zzh().zzs();
        }

        public static void i(zzv zzvVar, zzq zzqVar) {
            zzvVar.getClass();
            zzvVar.zzi = zzqVar.zza();
            zzvVar.zzg |= 2;
        }

        public static void j(zzv zzvVar, zzgxp zzgxpVar) {
            zzvVar.getClass();
            zzvVar.zzh = zzgxpVar.zzx();
            zzvVar.zzg |= 1;
        }

        public static void l(zzv zzvVar, String str) {
            zzvVar.getClass();
            str.getClass();
            zzvVar.zzg |= 1;
            zzvVar.zzh = str;
        }

        public static void m(zzv zzvVar, int i, int i2) {
            zzgzf zzgzfVar = zzvVar.zzj;
            if (!zzgzfVar.zzc()) {
                zzvVar.zzj = zzgyx.cg(zzgzfVar);
            }
            zzvVar.zzj.zze(i, i2);
        }

        public static void n(zzv zzvVar, int i) {
            zzgzf zzgzfVar = zzvVar.zzj;
            if (!zzgzfVar.zzc()) {
                zzvVar.zzj = zzgyx.cg(zzgzfVar);
            }
            zzvVar.zzj.zzi(i);
        }

        public static zzv zzA(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzv) zzgyx.bp(zze, bArr, zzgyhVar);
        }

        public static zzhaq<zzv> zzB() {
            return zze.zzbN();
        }

        public static zza zzd() {
            return (zza) zze.cl();
        }

        public static zza zzf(zzv zzvVar) {
            return (zza) zze.ci(zzvVar);
        }

        public static zzv zzh() {
            return zze;
        }

        public static zzv zzi(InputStream inputStream) throws IOException {
            return (zzv) zzgyx.br(zze, inputStream);
        }

        public static zzv zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzv) zzgyx.bo(zze, inputStream, zzgyhVar);
        }

        public static zzv zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zzv) zzgyx.by(zze, zzgxpVar);
        }

        public static zzv zzl(zzgxv zzgxvVar) throws IOException {
            return (zzv) zzgyx.ca(zze, zzgxvVar);
        }

        public static zzv zzm(InputStream inputStream) throws IOException {
            return (zzv) zzgyx.ch(zze, inputStream);
        }

        public static zzv zzn(ByteBuffer byteBuffer) throws zzgzm {
            return (zzv) zzgyx.bx(zze, byteBuffer);
        }

        public static zzv zzo(byte[] bArr) throws zzgzm {
            return (zzv) zzgyx.cc(zze, bArr);
        }

        public static zzv zzp(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzv) zzgyx.bu(zze, zzgxpVar, zzgyhVar);
        }

        public static zzv zzx(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzv) zzgyx.bv(zze, zzgxvVar, zzgyhVar);
        }

        public static zzv zzy(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzv) zzgyx.bw(zze, inputStream, zzgyhVar);
        }

        public static zzv zzz(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzv) zzgyx.cf(zze, byteBuffer, zzgyhVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzg", "zzh", "zzi", zzq.zze(), "zzj", "zzk"});
                case 3:
                    return new zzv();
                case 4:
                    return new zza(zze);
                case 5:
                    return zze;
                case 6:
                    zzhaq<zzv> zzhaqVar2 = zzf;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzv.class) {
                        try {
                            zzhaqVar = zzf;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zze);
                                zzf = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public int zza(int i) {
            return this.zzj.zzd(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public int zzb() {
            return this.zzj.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public zzq zzc() {
            zzq zzb2 = zzq.zzb(this.zzi);
            return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public zzap zzq() {
            zzap zzapVar = this.zzk;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public zzgxp zzr() {
            return zzgxp.zzw(this.zzh);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public String zzs() {
            return this.zzh;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public List<Integer> zzt() {
            return this.zzj;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public boolean zzu() {
            return (this.zzg & 1) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public boolean zzv() {
            return (this.zzg & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzw
        public boolean zzw() {
            return (this.zzg & 2) != 0;
        }
    }

    public interface zzw extends zzhaj {
        int zza(int i);

        int zzb();

        zzq zzc();

        zzap zzq();

        zzgxp zzr();

        String zzs();

        List<Integer> zzt();

        boolean zzu();

        boolean zzv();

        boolean zzw();
    }

    public final class zzx extends zzgyx<zzx, zza> implements zzy {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzx zzc;
        private static volatile zzhaq<zzx> zzd;
        private int zze;
        private int zzf;
        private zzgzf zzg = uo.f20109c;

        public final class zza extends zzgyr<zzx, zza> implements zzy {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzy
            public int zza(int i) {
                return ((zzx) this.f8682e).zza(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzy
            public int zzb() {
                return ((zzx) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzy
            public zzq zzc() {
                return ((zzx) this.f8682e).zzc();
            }

            public zza zzd(Iterable<? extends Integer> iterable) {
                f();
                zzx.b((zzx) this.f8682e, iterable);
                return this;
            }

            public zza zze(int i) {
                f();
                zzx.e((zzx) this.f8682e, i);
                return this;
            }

            public zza zzf() {
                f();
                zzx.d((zzx) this.f8682e);
                return this;
            }

            public zza zzg() {
                f();
                zzx.a((zzx) this.f8682e);
                return this;
            }

            public zza zzh(int i, int i2) {
                f();
                zzx.h((zzx) this.f8682e, i, i2);
                return this;
            }

            public zza zzi(zzq zzqVar) {
                f();
                zzx.g((zzx) this.f8682e, zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzy
            public List<Integer> zzj() {
                return Collections.unmodifiableList(((zzx) this.f8682e).zzj());
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzy
            public boolean zzk() {
                return ((zzx) this.f8682e).zzk();
            }
        }

        static {
            zzx zzxVar = new zzx();
            zzc = zzxVar;
            zzgyx.cb(zzx.class, zzxVar);
        }

        public static void a(zzx zzxVar) {
            zzxVar.zze &= -2;
            zzxVar.zzf = 0;
        }

        public static void b(zzx zzxVar, Iterable iterable) {
            zzgzf zzgzfVar = zzxVar.zzg;
            if (!zzgzfVar.zzc()) {
                zzxVar.zzg = zzgyx.cg(zzgzfVar);
            }
            zzgwy.bi(iterable, zzxVar.zzg);
        }

        public static void d(zzx zzxVar) {
            zzxVar.getClass();
            zzxVar.zzg = uo.f20109c;
        }

        public static void e(zzx zzxVar, int i) {
            zzgzf zzgzfVar = zzxVar.zzg;
            if (!zzgzfVar.zzc()) {
                zzxVar.zzg = zzgyx.cg(zzgzfVar);
            }
            zzxVar.zzg.zzi(i);
        }

        public static void g(zzx zzxVar, zzq zzqVar) {
            zzxVar.getClass();
            zzxVar.zzf = zzqVar.zza();
            zzxVar.zze |= 1;
        }

        public static void h(zzx zzxVar, int i, int i2) {
            zzgzf zzgzfVar = zzxVar.zzg;
            if (!zzgzfVar.zzc()) {
                zzxVar.zzg = zzgyx.cg(zzgzfVar);
            }
            zzxVar.zzg.zze(i, i2);
        }

        public static zza zzd() {
            return (zza) zzc.cl();
        }

        public static zza zzf(zzx zzxVar) {
            return (zza) zzc.ci(zzxVar);
        }

        public static zzx zzh() {
            return zzc;
        }

        public static zzx zzi(InputStream inputStream) throws IOException {
            return (zzx) zzgyx.br(zzc, inputStream);
        }

        public static zzx zzl(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzx) zzgyx.bo(zzc, inputStream, zzgyhVar);
        }

        public static zzx zzm(zzgxp zzgxpVar) throws zzgzm {
            return (zzx) zzgyx.by(zzc, zzgxpVar);
        }

        public static zzx zzn(zzgxv zzgxvVar) throws IOException {
            return (zzx) zzgyx.ca(zzc, zzgxvVar);
        }

        public static zzx zzo(InputStream inputStream) throws IOException {
            return (zzx) zzgyx.ch(zzc, inputStream);
        }

        public static zzx zzp(ByteBuffer byteBuffer) throws zzgzm {
            return (zzx) zzgyx.bx(zzc, byteBuffer);
        }

        public static zzx zzq(byte[] bArr) throws zzgzm {
            return (zzx) zzgyx.cc(zzc, bArr);
        }

        public static zzx zzr(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzx) zzgyx.bu(zzc, zzgxpVar, zzgyhVar);
        }

        public static zzx zzs(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzx) zzgyx.bv(zzc, zzgxvVar, zzgyhVar);
        }

        public static zzx zzt(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzx) zzgyx.bw(zzc, inputStream, zzgyhVar);
        }

        public static zzx zzu(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzx) zzgyx.cf(zzc, byteBuffer, zzgyhVar);
        }

        public static zzx zzv(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzx) zzgyx.bp(zzc, bArr, zzgyhVar);
        }

        public static zzhaq<zzx> zzw() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u0016", new Object[]{"zze", "zzf", zzq.zze(), "zzg"});
                case 3:
                    return new zzx();
                case 4:
                    return new zza(zzc);
                case 5:
                    return zzc;
                case 6:
                    zzhaq<zzx> zzhaqVar2 = zzd;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzx.class) {
                        try {
                            zzhaqVar = zzd;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zzc);
                                zzd = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzy
        public int zza(int i) {
            return this.zzg.zzd(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzy
        public int zzb() {
            return this.zzg.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzy
        public zzq zzc() {
            zzq zzb2 = zzq.zzb(this.zzf);
            return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzy
        public List<Integer> zzj() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzy
        public boolean zzk() {
            return (this.zze & 1) != 0;
        }
    }

    public interface zzy extends zzhaj {
        int zza(int i);

        int zzb();

        zzq zzc();

        List<Integer> zzj();

        boolean zzk();
    }

    public final class zzz extends zzgyx<zzz, zza> implements zzaa {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        private static final zzz zze;
        private static volatile zzhaq<zzz> zzf;
        private int zzg;
        private zzv zzh;
        private zzgzj<zzan> zzi = ahn.f10232c;
        private int zzj;
        private zzap zzk;

        public final class zza extends zzgyr<zzz, zza> implements zzaa {
            @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
            public boolean zzA() {
                return ((zzz) this.f8682e).zzA();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
            public boolean zzB() {
                return ((zzz) this.f8682e).zzB();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
            public int zza() {
                return ((zzz) this.f8682e).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
            public zzq zzb() {
                return ((zzz) this.f8682e).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
            public zzv zzc() {
                return ((zzz) this.f8682e).zzc();
            }

            public zza zzd(Iterable<? extends zzan> iterable) {
                f();
                zzz.a((zzz) this.f8682e, iterable);
                return this;
            }

            public zza zze(zzan.zza zzaVar) {
                f();
                zzz.p((zzz) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzf(zzan zzanVar) {
                f();
                zzz.p((zzz) this.f8682e, zzanVar);
                return this;
            }

            public zza zzg(int i, zzan.zza zzaVar) {
                f();
                zzz.j((zzz) this.f8682e, i, zzaVar.zzbr());
                return this;
            }

            public zza zzh(int i, zzan zzanVar) {
                f();
                zzz.j((zzz) this.f8682e, i, zzanVar);
                return this;
            }

            public zza zzi() {
                f();
                zzz.h((zzz) this.f8682e);
                return this;
            }

            public zza zzj() {
                f();
                zzz.b((zzz) this.f8682e);
                return this;
            }

            public zza zzk() {
                f();
                zzz.g((zzz) this.f8682e);
                return this;
            }

            public zza zzl() {
                f();
                zzz.e((zzz) this.f8682e);
                return this;
            }

            public zza zzm(zzv zzvVar) {
                f();
                zzz.n((zzz) this.f8682e, zzvVar);
                return this;
            }

            public zza zzn(zzap zzapVar) {
                f();
                zzz.l((zzz) this.f8682e, zzapVar);
                return this;
            }

            public zza zzo(int i) {
                f();
                zzz.d((zzz) this.f8682e, i);
                return this;
            }

            public zza zzp(zzv.zza zzaVar) {
                f();
                zzz.k((zzz) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzq(zzv zzvVar) {
                f();
                zzz.k((zzz) this.f8682e, zzvVar);
                return this;
            }

            public zza zzr(zzap.zza zzaVar) {
                f();
                zzz.o((zzz) this.f8682e, zzaVar.zzbr());
                return this;
            }

            public zza zzs(zzap zzapVar) {
                f();
                zzz.o((zzz) this.f8682e, zzapVar);
                return this;
            }

            public zza zzt(zzq zzqVar) {
                f();
                zzz.m((zzz) this.f8682e, zzqVar);
                return this;
            }

            public zza zzu(int i, zzan.zza zzaVar) {
                f();
                zzz.f((zzz) this.f8682e, i, zzaVar.zzbr());
                return this;
            }

            public zza zzv(int i, zzan zzanVar) {
                f();
                zzz.f((zzz) this.f8682e, i, zzanVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
            public zzan zzw(int i) {
                return ((zzz) this.f8682e).zzw(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
            public zzap zzx() {
                return ((zzz) this.f8682e).zzx();
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
            public List<zzan> zzy() {
                return Collections.unmodifiableList(((zzz) this.f8682e).zzy());
            }

            @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
            public boolean zzz() {
                return ((zzz) this.f8682e).zzz();
            }
        }

        static {
            zzz zzzVar = new zzz();
            zze = zzzVar;
            zzgyx.cb(zzz.class, zzzVar);
        }

        public static void a(zzz zzzVar, Iterable iterable) {
            zzzVar.q();
            zzgwy.bi(iterable, zzzVar.zzi);
        }

        public static void b(zzz zzzVar) {
            zzzVar.zzk = null;
            zzzVar.zzg &= -5;
        }

        public static void d(zzz zzzVar, int i) {
            zzzVar.q();
            zzzVar.zzi.remove(i);
        }

        public static void e(zzz zzzVar) {
            zzzVar.getClass();
            zzzVar.zzi = ahn.f10232c;
        }

        public static void f(zzz zzzVar, int i, zzan zzanVar) {
            zzzVar.getClass();
            zzanVar.getClass();
            zzzVar.q();
            zzzVar.zzi.set(i, zzanVar);
        }

        public static void g(zzz zzzVar) {
            zzzVar.zzg &= -3;
            zzzVar.zzj = 0;
        }

        public static void h(zzz zzzVar) {
            zzzVar.zzh = null;
            zzzVar.zzg &= -2;
        }

        public static void j(zzz zzzVar, int i, zzan zzanVar) {
            zzzVar.getClass();
            zzanVar.getClass();
            zzzVar.q();
            zzzVar.zzi.add(i, zzanVar);
        }

        public static void k(zzz zzzVar, zzv zzvVar) {
            zzzVar.getClass();
            zzvVar.getClass();
            zzzVar.zzh = zzvVar;
            zzzVar.zzg |= 1;
        }

        public static void l(zzz zzzVar, zzap zzapVar) {
            zzzVar.getClass();
            zzapVar.getClass();
            zzap zzapVar2 = zzzVar.zzk;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            zzzVar.zzk = zzapVar;
            zzzVar.zzg |= 4;
        }

        public static void m(zzz zzzVar, zzq zzqVar) {
            zzzVar.getClass();
            zzzVar.zzj = zzqVar.zza();
            zzzVar.zzg |= 2;
        }

        public static void n(zzz zzzVar, zzv zzvVar) {
            zzzVar.getClass();
            zzvVar.getClass();
            zzv zzvVar2 = zzzVar.zzh;
            if (zzvVar2 != null && zzvVar2 != zzv.zzh()) {
                zzv.zza zzf2 = zzv.zzf(zzvVar2);
                zzf2.zzbj(zzvVar);
                zzvVar = zzf2.zzbs();
            }
            zzzVar.zzh = zzvVar;
            zzzVar.zzg |= 1;
        }

        public static void o(zzz zzzVar, zzap zzapVar) {
            zzzVar.getClass();
            zzapVar.getClass();
            zzzVar.zzk = zzapVar;
            zzzVar.zzg |= 4;
        }

        public static void p(zzz zzzVar, zzan zzanVar) {
            zzzVar.getClass();
            zzanVar.getClass();
            zzzVar.q();
            zzzVar.zzi.add(zzanVar);
        }

        public static zza zzd() {
            return (zza) zze.cl();
        }

        public static zza zzf(zzz zzzVar) {
            return (zza) zze.ci(zzzVar);
        }

        public static zzz zzh() {
            return zze;
        }

        public static zzz zzi(InputStream inputStream) throws IOException {
            return (zzz) zzgyx.br(zze, inputStream);
        }

        public static zzz zzj(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzz) zzgyx.bo(zze, inputStream, zzgyhVar);
        }

        public static zzz zzk(zzgxp zzgxpVar) throws zzgzm {
            return (zzz) zzgyx.by(zze, zzgxpVar);
        }

        public static zzz zzl(zzgxv zzgxvVar) throws IOException {
            return (zzz) zzgyx.ca(zze, zzgxvVar);
        }

        public static zzz zzm(InputStream inputStream) throws IOException {
            return (zzz) zzgyx.ch(zze, inputStream);
        }

        public static zzz zzn(ByteBuffer byteBuffer) throws zzgzm {
            return (zzz) zzgyx.bx(zze, byteBuffer);
        }

        public static zzz zzo(byte[] bArr) throws zzgzm {
            return (zzz) zzgyx.cc(zze, bArr);
        }

        public static zzz zzp(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
            return (zzz) zzgyx.bu(zze, zzgxpVar, zzgyhVar);
        }

        public static zzz zzq(zzgxv zzgxvVar, zzgyh zzgyhVar) throws IOException {
            return (zzz) zzgyx.bv(zze, zzgxvVar, zzgyhVar);
        }

        public static zzz zzr(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
            return (zzz) zzgyx.bw(zze, inputStream, zzgyhVar);
        }

        public static zzz zzs(ByteBuffer byteBuffer, zzgyh zzgyhVar) throws zzgzm {
            return (zzz) zzgyx.cf(zze, byteBuffer, zzgyhVar);
        }

        public static zzz zzt(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
            return (zzz) zzgyx.bp(zze, bArr, zzgyhVar);
        }

        public static zzhaq<zzz> zzv() {
            return zze.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzgyx
        public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
            zzhaq zzhaqVar;
            switch (zzgywVar.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return new cyk(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003᠌\u0001\u0004ဉ\u0002", new Object[]{"zzg", "zzh", "zzi", zzan.class, "zzj", zzq.zze(), "zzk"});
                case 3:
                    return new zzz();
                case 4:
                    return new zza(zze);
                case 5:
                    return zze;
                case 6:
                    zzhaq<zzz> zzhaqVar2 = zzf;
                    if (zzhaqVar2 != null) {
                        return zzhaqVar2;
                    }
                    synchronized (zzz.class) {
                        try {
                            zzhaqVar = zzf;
                            if (zzhaqVar == null) {
                                zzhaqVar = new zzgys(zze);
                                zzf = zzhaqVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzhaqVar;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final void q() {
            zzgzj<zzan> zzgzjVar = this.zzi;
            if (zzgzjVar.zzc()) {
                return;
            }
            this.zzi = zzgyx.bn(zzgzjVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
        public boolean zzA() {
            return (this.zzg & 4) != 0;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
        public boolean zzB() {
            return (this.zzg & 2) != 0;
        }

        public List<? extends zzao> zzC() {
            return this.zzi;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
        public int zza() {
            return this.zzi.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
        public zzq zzb() {
            zzq zzb2 = zzq.zzb(this.zzj);
            return zzb2 == null ? zzq.ENUM_FALSE : zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
        public zzv zzc() {
            zzv zzvVar = this.zzh;
            return zzvVar == null ? zzv.zzh() : zzvVar;
        }

        public zzao zzu(int i) {
            return this.zzi.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
        public zzan zzw(int i) {
            return this.zzi.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
        public zzap zzx() {
            zzap zzapVar = this.zzk;
            return zzapVar == null ? zzap.zzi() : zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
        public List<zzan> zzy() {
            return this.zzi;
        }

        @Override // com.google.android.gms.internal.ads.zzbbs.zzaa
        public boolean zzz() {
            return (this.zzg & 1) != 0;
        }
    }

    public static void zza(zzgyh zzgyhVar) {
    }
}
