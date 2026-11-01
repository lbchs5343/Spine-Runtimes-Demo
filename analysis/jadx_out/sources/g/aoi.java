package g;

import android.content.ClipData;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes.dex */
public final /* synthetic */ class aoi implements avy, bwb, ghx, avn, dbd, ery, cbr, bqq, hs {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10569a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10570b;

    public /* synthetic */ aoi(int i, Object obj) {
        this.f10569a = i;
        this.f10570b = obj;
    }

    @Override // g.cbr
    public Object _bj(anf anfVar) {
        Bundle l = anfVar.l((String) this.f10570b);
        if (l == null || !l.getBoolean("success")) {
            throw new IOException(l != null ? l.getString(AVErrorInfo.ERROR, "operation_failed") : "operation_failed");
        }
        return l;
    }

    @Override // g.avy
    public boolean _bq(hed hedVar, cfm cfmVar) {
        List<guv> list = (List) this.f10570b;
        for (guv guvVar : list) {
            fza fzaVar = guvVar.f18787a;
            if (cfmVar.x().contains(fzaVar)) {
                if (!gbo.a(cfmVar, guvVar, fzaVar)) {
                    hedVar.bs("Can't wrap try/catch for region: " + cfmVar);
                }
                list.remove(guvVar);
                return !list.isEmpty();
            }
        }
        return false;
    }

    @Override // g.hs
    public fgd c(aga agaVar) {
        Context context = (Context) this.f10570b;
        String str = (String) agaVar.f10170b;
        dsg dsgVar = (dsg) agaVar.f10171c;
        bff.p(dsgVar, "callback");
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
        }
        return new exq(context, str, dsgVar, true, true);
    }

    @Override // g.bwb
    public void d(ArrayList arrayList) {
        gwf gwfVar = (gwf) this.f10570b;
        gwfVar.l(gwfVar.f18872f);
    }

    @Override // g.avn
    public Object e(xa xaVar) {
        return this.f10570b;
    }

    public boolean f(evf evfVar, int i, Bundle bundle) {
        atd atdVar;
        duo duoVar = (duo) this.f10570b;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 25 && (i & 1) != 0) {
            try {
                ((cdx) evfVar.f16224f).d();
                Parcelable parcelable = (Parcelable) ((cdx) evfVar.f16224f).b();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception unused) {
                return false;
            }
        }
        cdx cdxVar = (cdx) evfVar.f16224f;
        ClipData clipData = new ClipData(cdxVar.getDescription(), new ClipData.Item(cdxVar.c()));
        if (i2 >= 31) {
            atdVar = new emr(clipData, 2);
        } else {
            euf eufVar = new euf();
            eufVar.j = clipData;
            eufVar.f16168f = 2;
            atdVar = eufVar;
        }
        atdVar.e(cdxVar.e());
        atdVar.setExtras(bundle);
        return goi.k(duoVar, atdVar.build()) == null;
    }

    @Override // g.dbd
    public Object g(eje ejeVar) {
        ghn ghnVar = (ghn) this.f10570b;
        ghnVar.ag(false, true, new bht(new cul(ejeVar, ghnVar)));
        return "Deferred.asListenableFuture";
    }

    @Override // g.ery
    public Object h(long j, InputStream inputStream) {
        Path path;
        StandardCopyOption standardCopyOption;
        path = ((File) this.f10570b).toPath();
        try {
            standardCopyOption = StandardCopyOption.REPLACE_EXISTING;
            Files.copy(inputStream, path, standardCopyOption);
            return null;
        } catch (Exception e2) {
            Files.deleteIfExists(path);
            throw new gck("Resource file save error", e2);
        }
    }

    @Override // g.bqq
    public Object i() {
        SQLiteDatabase m;
        int i = this.f10569a;
        int i2 = 1;
        boolean z = false;
        Object obj = this.f10570b;
        switch (i) {
            case 18:
                cga cgaVar = (cga) ((gv) obj);
                cgaVar.getClass();
                int i3 = dwq.f14964a;
                duw duwVar = new duw(i2, z);
                duwVar.h = null;
                duwVar.f14864d = new ArrayList();
                duwVar.f14865e = null;
                duwVar.f14866f = "";
                HashMap hashMap = new HashMap();
                m = cgaVar.m();
                m.beginTransaction();
                try {
                    dwq dwqVar = (dwq) cga.h(m.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new gkn(cgaVar, hashMap, duwVar, 5));
                    m.setTransactionSuccessful();
                    return dwqVar;
                } finally {
                }
            case 19:
                cga cgaVar2 = (cga) ((ahy) obj);
                long l = cgaVar2.f12813f.l() - cgaVar2.f12810c.f18459b;
                m = cgaVar2.m();
                m.beginTransaction();
                try {
                    String[] strArr = {String.valueOf(l)};
                    Cursor rawQuery = m.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
                    while (rawQuery.moveToNext()) {
                        try {
                            cgaVar2.l(rawQuery.getInt(0), gwo.MESSAGE_TOO_OLD, rawQuery.getString(1));
                        } catch (Throwable th) {
                            rawQuery.close();
                            throw th;
                        }
                    }
                    rawQuery.close();
                    int delete = m.delete("events", "timestamp_ms < ?", strArr);
                    m.setTransactionSuccessful();
                    m.endTransaction();
                    return Integer.valueOf(delete);
                } finally {
                }
            case 20:
                cga cgaVar3 = (cga) ((dwp) obj).f14962f;
                m = cgaVar3.m();
                m.beginTransaction();
                try {
                    m.compileStatement("DELETE FROM log_event_dropped").execute();
                    m.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + cgaVar3.f12813f.l()).execute();
                    m.setTransactionSuccessful();
                    return null;
                } finally {
                }
            default:
                efs efsVar = (efs) obj;
                Iterator it = ((Iterable) ((cga) efsVar.f15459c).j(new kf(29))).iterator();
                while (it.hasNext()) {
                    efsVar.f15460d.d((ku) it.next(), 1, false);
                }
                return null;
        }
    }

    public fks j(dzh dzhVar) {
        cov covVar = (cov) this.f10570b;
        URL url = (URL) dzhVar.i;
        if (Log.isLoggable(baf.as("CctTransportBackend"), 4)) {
            String.format("Making request to: %s", url);
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(covVar.f13254g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.1.8 android/");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = (String) dzhVar.f15122g;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    emr emrVar = covVar.f13250c;
                    aeq aeqVar = (aeq) dzhVar.f15121f;
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream));
                    tu tuVar = (tu) emrVar.n;
                    dag dagVar = new dag(bufferedWriter, tuVar.f20072f, tuVar.f20073g, tuVar.h, tuVar.f20071e);
                    dagVar.j(aeqVar);
                    dagVar.m();
                    dagVar.f13852g.flush();
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    Integer valueOf = Integer.valueOf(responseCode);
                    if (Log.isLoggable(baf.as("CctTransportBackend"), 4)) {
                        String.format("Status Code: %d", valueOf);
                    }
                    baf.ax("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                    baf.ax("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new fks(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new fks(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            fks fksVar = new fks(responseCode, null, gdf.b(new BufferedReader(new InputStreamReader(gZIPInputStream))).f17929a);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return fksVar;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (fgn e2) {
            e = e2;
            baf.bd("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new fks(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, null, 0L);
        } catch (ConnectException e3) {
            e = e3;
            baf.bd("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new fks(500, null, 0L);
        } catch (UnknownHostException e4) {
            e = e4;
            baf.bd("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new fks(500, null, 0L);
        } catch (IOException e5) {
            e = e5;
            baf.bd("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new fks(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, null, 0L);
        }
    }

    @Override // g.ghx
    public anp k(View view, anp anpVar) {
        switch (this.f10569a) {
            case 5:
                efx efxVar = (efx) this.f10570b;
                dif difVar = anpVar.f10526b;
                oi i = difVar.i(MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL);
                int i2 = difVar.i(8).f19758b;
                int i3 = i.f19759c;
                int paddingTop = view.getPaddingTop();
                int i4 = i.f19761e;
                view.setPadding(i3, paddingTop, i4, Math.max(i.f19758b, i2));
                efxVar.bf = difVar.h(8);
                efxVar.bm();
                int i5 = Build.VERSION.SDK_INT;
                ecs bruVar = i5 >= 34 ? new bru(anpVar) : i5 >= 31 ? new ghh(anpVar) : i5 >= 30 ? new yd(anpVar) : i5 >= 29 ? new bbb(anpVar) : new gjd(anpVar);
                bruVar.a(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, oi.g(i.f19759c, i.f19760d, i4, 0));
                bruVar.a(8, oi.f19757a);
                return bruVar.g();
            default:
                frf frfVar = (frf) this.f10570b;
                oi i6 = anpVar.f10526b.i(MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL);
                int i7 = frfVar.f17279c;
                boolean z = frfVar.f17280d;
                view.setPadding(i7 + (z ? i6.f19759c : 0), frfVar.f17281e + (frfVar.f17278b ? i6.f19760d : 0), frfVar.f17282f + (z ? i6.f19761e : 0), frfVar.f17277a + (z ? i6.f19758b : 0));
                return anpVar;
        }
    }
}
