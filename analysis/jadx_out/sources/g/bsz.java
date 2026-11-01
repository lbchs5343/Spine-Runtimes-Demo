package g;

import android.app.AlarmManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.SystemClock;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;

/* loaded from: classes3.dex */
public final class bsz implements gan {

    /* renamed from: a, reason: collision with root package name */
    public static volatile bsz f12154a;
    public boolean aa;

    /* renamed from: ab, reason: collision with root package name */
    public FileChannel f12155ab;
    public final HashMap ac;
    public int ad;
    public dqg af;

    /* renamed from: b, reason: collision with root package name */
    public fit f12156b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f12157c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12158d;

    /* renamed from: e, reason: collision with root package name */
    public final fit f12159e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f12160f;

    /* renamed from: g, reason: collision with root package name */
    public FileLock f12161g;
    public long h;
    public String i;
    public ein k;
    public ggz l;
    public final cyg m;
    public yh n;
    public boolean o;
    public boolean p;
    public gwx q;
    public uk s;
    public int t;
    public final dqu u;
    public ArrayList w;
    public final HashMap x;
    public aaq y;
    public final fit z;
    public boolean ae = false;
    public final ecv r = new ecv(this);
    public long v = -1;
    public final ahd j = new ahd(this);

    public bsz(gyf gyfVar) {
        this.m = cyg.al((Context) gyfVar.f18999a, null, null);
        fit fitVar = new fit(this, 2);
        fitVar.m();
        this.f12159e = fitVar;
        fit fitVar2 = new fit(this, 0);
        fitVar2.m();
        this.z = fitVar2;
        dqu dquVar = new dqu(this);
        dquVar.m();
        this.u = dquVar;
        this.ac = new HashMap();
        this.x = new HashMap();
        zzaz().p(new aku(this, gyfVar));
    }

    public static final void ag(aiq aiqVar) {
        if (aiqVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (!aiqVar.l) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(aiqVar.getClass())));
        }
    }

    public static final boolean ah(afh afhVar) {
        return (TextUtils.isEmpty(afhVar.zzb) && TextUtils.isEmpty(afhVar.zzq)) ? false : true;
    }

    public static bsz ai(Context context) {
        ckd.k(context);
        ckd.k(context.getApplicationContext());
        if (f12154a == null) {
            synchronized (bsz.class) {
                try {
                    if (f12154a == null) {
                        f12154a = new bsz(new gyf(context));
                    }
                } finally {
                }
            }
        }
        return f12154a;
    }

    public static final void aj(btw btwVar, int i, String str) {
        List unmodifiableList = Collections.unmodifiableList(((kk) btwVar.k).q());
        for (int i2 = 0; i2 < unmodifiableList.size(); i2++) {
            if ("_err".equals(((asm) unmodifiableList.get(i2)).u())) {
                return;
            }
        }
        bd i3 = asm.i();
        i3.a("_err");
        i3.c(i);
        asm asmVar = (asm) i3.o();
        bd i4 = asm.i();
        i4.a("_ev");
        i4.b(str);
        asm asmVar2 = (asm) i4.o();
        if (btwVar.i) {
            btwVar.p();
            btwVar.i = false;
        }
        kk.d((kk) btwVar.k, asmVar);
        if (btwVar.i) {
            btwVar.p();
            btwVar.i = false;
        }
        kk.d((kk) btwVar.k, asmVar2);
    }

    public static final void ak(btw btwVar, String str) {
        List unmodifiableList = Collections.unmodifiableList(((kk) btwVar.k).q());
        for (int i = 0; i < unmodifiableList.size(); i++) {
            if (str.equals(((asm) unmodifiableList.get(i)).u())) {
                btwVar.b(i);
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:417:0x0cfb, code lost:
    
        if (r9 > (((java.lang.Long) r0.h(null)).longValue() + r7)) goto L415;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0511 A[Catch: all -> 0x011d, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x090e A[Catch: all -> 0x011d, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0954 A[Catch: all -> 0x011d, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0979 A[Catch: all -> 0x011d, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x09fa  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0a01 A[Catch: all -> 0x011d, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0a2b A[Catch: all -> 0x011d, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x09fd  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0ce2 A[Catch: all -> 0x011d, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0d76 A[Catch: all -> 0x011d, TRY_LEAVE, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0d92 A[Catch: all -> 0x011d, SQLiteException -> 0x0dac, TRY_LEAVE, TryCatch #2 {SQLiteException -> 0x0dac, blocks: (B:425:0x0d83, B:427:0x0d92), top: B:424:0x0d83, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0401 A[Catch: all -> 0x011d, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x04d0 A[Catch: all -> 0x011d, TryCatch #3 {all -> 0x011d, blocks: (B:3:0x0016, B:5:0x002e, B:8:0x0036, B:10:0x0044, B:11:0x0049, B:12:0x0059, B:15:0x0077, B:18:0x00a0, B:20:0x00de, B:23:0x00f6, B:25:0x0100, B:28:0x057e, B:29:0x012d, B:31:0x0143, B:34:0x0163, B:36:0x016d, B:38:0x017d, B:40:0x018b, B:42:0x019b, B:44:0x01a6, B:49:0x01a9, B:52:0x01c0, B:68:0x0401, B:69:0x0415, B:72:0x0421, B:76:0x0444, B:77:0x0433, B:86:0x04c4, B:88:0x04d0, B:91:0x04e1, B:93:0x04f2, B:95:0x04fe, B:97:0x056a, B:103:0x0511, B:105:0x051d, B:108:0x052e, B:110:0x053f, B:112:0x054b, B:116:0x044e, B:118:0x045a, B:120:0x0466, B:125:0x04aa, B:126:0x0482, B:129:0x0494, B:131:0x049a, B:133:0x04a4, B:138:0x0218, B:141:0x0226, B:143:0x0234, B:145:0x0282, B:146:0x0252, B:148:0x0262, B:156:0x028b, B:158:0x02ba, B:159:0x02e2, B:161:0x0320, B:162:0x0326, B:165:0x0332, B:167:0x036e, B:168:0x038b, B:170:0x0395, B:172:0x03a5, B:174:0x03bd, B:175:0x03ad, B:185:0x03c6, B:188:0x03ce, B:189:0x03e6, B:203:0x0594, B:205:0x05a6, B:207:0x05af, B:209:0x05e2, B:210:0x05b9, B:212:0x05c2, B:214:0x05c8, B:216:0x05d4, B:218:0x05dc, B:221:0x05e5, B:222:0x05f9, B:225:0x0601, B:228:0x0613, B:229:0x061f, B:231:0x0627, B:232:0x065c, B:234:0x0683, B:236:0x0692, B:238:0x0698, B:240:0x06a2, B:241:0x06cb, B:243:0x06d5, B:247:0x06e7, B:249:0x06eb, B:250:0x06f1, B:245:0x06f9, B:252:0x06fc, B:254:0x0700, B:255:0x0706, B:256:0x070d, B:258:0x0711, B:259:0x0717, B:261:0x0727, B:262:0x072d, B:263:0x0737, B:265:0x0741, B:267:0x0759, B:269:0x0761, B:270:0x0767, B:271:0x076e, B:273:0x077e, B:275:0x0786, B:276:0x078c, B:278:0x0793, B:281:0x0796, B:283:0x07e8, B:284:0x07fb, B:286:0x0805, B:289:0x0824, B:291:0x083d, B:293:0x0855, B:295:0x085d, B:297:0x0861, B:299:0x0865, B:301:0x086f, B:302:0x087a, B:304:0x087e, B:306:0x0884, B:307:0x088f, B:308:0x089d, B:311:0x0b17, B:316:0x08a8, B:383:0x08c5, B:320:0x08ec, B:322:0x090e, B:323:0x0916, B:325:0x091c, B:328:0x092e, B:333:0x0954, B:334:0x0979, B:336:0x0985, B:338:0x099e, B:339:0x09e7, B:344:0x0a01, B:346:0x0a0c, B:348:0x0a10, B:350:0x0a14, B:352:0x0a18, B:353:0x0a24, B:355:0x0a2b, B:357:0x0a31, B:359:0x0a48, B:360:0x0a4d, B:361:0x0b14, B:363:0x0a8b, B:365:0x0a90, B:368:0x0aa4, B:370:0x0ac0, B:371:0x0ac7, B:374:0x0b08, B:375:0x0a95, B:381:0x093f, B:387:0x08cd, B:389:0x0b21, B:391:0x0b33, B:393:0x0b37, B:394:0x0b3d, B:395:0x0b47, B:396:0x0b4f, B:398:0x0b55, B:400:0x0b6e, B:402:0x0b81, B:403:0x0c18, B:405:0x0c22, B:407:0x0c3a, B:410:0x0c41, B:412:0x0c49, B:413:0x0c4f, B:414:0x0c90, B:416:0x0ce2, B:418:0x0d22, B:420:0x0d26, B:421:0x0d31, B:423:0x0d76, B:425:0x0d83, B:427:0x0d92, B:430:0x0dad, B:433:0x0dc8, B:434:0x0cfd, B:435:0x0c57, B:437:0x0c65, B:439:0x0c69, B:440:0x0c6f, B:441:0x0c77, B:442:0x0de1, B:443:0x0dfb, B:446:0x0e03, B:448:0x0e08, B:451:0x0e18, B:453:0x0e32, B:454:0x0e4f, B:456:0x0e58, B:457:0x0e78, B:463:0x0e63, B:464:0x0b9c, B:466:0x0ba6, B:468:0x0bb6, B:469:0x0bbd, B:474:0x0bd3, B:475:0x0bda, B:477:0x0c09, B:478:0x0c10, B:479:0x0c0d, B:480:0x0bd7, B:482:0x0bba, B:484:0x062c, B:486:0x0632, B:488:0x0636, B:489:0x063c, B:492:0x0e8b), top: B:2:0x0016, inners: #0, #1, #2, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean al(long j) {
        int i;
        cyg cygVar;
        dqu dquVar;
        fit fitVar;
        Long l;
        long j2;
        dqu dquVar2;
        ggz ggzVar;
        fzb fzbVar;
        long currentTimeMillis;
        long dy;
        tw twVar;
        ContentValues contentValues;
        long j3;
        fit fitVar2;
        long parseLong;
        int v;
        long j4;
        dqu dquVar3;
        long f2;
        Long l2;
        String str;
        boolean z;
        String str2;
        boolean z2;
        int i2;
        dkh dkhVar;
        int i3;
        int i4;
        char c2;
        String str3 = "1";
        String str4 = "_ai";
        Long l3 = 1L;
        ggz ggzVar2 = this.l;
        ag(ggzVar2);
        ggzVar2.ap();
        try {
            dkh dkhVar2 = new dkh(this);
            ggz ggzVar3 = this.l;
            ag(ggzVar3);
            ggzVar3.ao(j, this.v, dkhVar2);
            ArrayList arrayList = (ArrayList) dkhVar2.f14303a;
            if (arrayList != null && !arrayList.isEmpty()) {
                epg epgVar = (epg) ((fzb) dkhVar2.f14306d).ah();
                if (epgVar.i) {
                    epgVar.p();
                    epgVar.i = false;
                }
                fzb.i((fzb) epgVar.k);
                int i5 = -1;
                int i6 = 0;
                int i7 = 0;
                btw btwVar = null;
                int i8 = -1;
                btw btwVar2 = null;
                int i9 = 0;
                while (true) {
                    int size = ((ArrayList) dkhVar2.f14303a).size();
                    i = i7;
                    cygVar = this.m;
                    dquVar = this.u;
                    btw btwVar3 = btwVar;
                    fitVar = this.f12159e;
                    l = l3;
                    if (i6 >= size) {
                        break;
                    }
                    btw btwVar4 = (btw) ((kk) ((ArrayList) dkhVar2.f14303a).get(i6)).ah();
                    ag(dquVar);
                    if (dquVar.ar(((fzb) dkhVar2.f14306d).ch(), btwVar4.h())) {
                        int i10 = i6;
                        zzay().x().e(bgm.t(((fzb) dkhVar2.f14306d).ch()), "Dropping blocked raw event. appId", cygVar.ap().f(btwVar4.h()));
                        ag(dquVar);
                        if (!str3.equals(dquVar.c(((fzb) dkhVar2.f14306d).ch(), "measurement.upload.blacklist_internal"))) {
                            ag(dquVar);
                            if (!str3.equals(dquVar.c(((fzb) dkhVar2.f14306d).ch(), "measurement.upload.blacklist_public")) && !"_err".equals(btwVar4.h())) {
                                ap();
                                dkq.v(this.r, ((fzb) dkhVar2.f14306d).ch(), 11, "_ev", btwVar4.h(), 0);
                            }
                        }
                        str = str3;
                        str2 = str4;
                        i7 = i;
                        btwVar = btwVar3;
                        i4 = i10;
                    } else {
                        int i11 = i6;
                        str = str3;
                        if (btwVar4.h().equals(cux.ai(str4, dyd.q, dyd.i))) {
                            btwVar4.a(str4);
                            zzay().w().h("Renaming ad_impression to _ai");
                            if (Log.isLoggable(zzay().al(), 5)) {
                                for (int i12 = 0; i12 < ((kk) btwVar4.k).r(); i12++) {
                                    if ("ad_platform".equals(btwVar4.g(i12).u()) && !btwVar4.g(i12).x().isEmpty() && MediationConstant.ADN_ADMOB.equalsIgnoreCase(btwVar4.g(i12).x())) {
                                        zzay().h.h("AdMob ad impression logged from app. Potentially duplicative.");
                                    }
                                }
                            }
                        }
                        ag(dquVar);
                        boolean al = dquVar.al(((fzb) dkhVar2.f14306d).ch(), btwVar4.h());
                        if (al) {
                            z = al;
                            str2 = str4;
                        } else {
                            ag(fitVar);
                            String h = btwVar4.h();
                            ckd.bf(h);
                            int hashCode = h.hashCode();
                            z = al;
                            str2 = str4;
                            if (hashCode == 94660) {
                                if (h.equals("_in")) {
                                    c2 = 0;
                                    if (c2 != 0) {
                                    }
                                }
                                c2 = 65535;
                                if (c2 != 0) {
                                }
                            } else if (hashCode != 95025) {
                                if (hashCode == 95027 && h.equals("_ui")) {
                                    c2 = 1;
                                    if (c2 != 0 && c2 != 1 && c2 != 2) {
                                        i2 = i8;
                                        z = false;
                                        if (z) {
                                            ArrayList arrayList2 = new ArrayList(Collections.unmodifiableList(((kk) btwVar4.k).q()));
                                            int i13 = 0;
                                            int i14 = -1;
                                            int i15 = -1;
                                            while (true) {
                                                dkhVar = dkhVar2;
                                                if (i13 >= arrayList2.size()) {
                                                    break;
                                                }
                                                if ("value".equals(((asm) arrayList2.get(i13)).u())) {
                                                    i14 = i13;
                                                } else if ("currency".equals(((asm) arrayList2.get(i13)).u())) {
                                                    i15 = i13;
                                                }
                                                i13++;
                                                dkhVar2 = dkhVar;
                                            }
                                            if (i14 != -1) {
                                                if (((asm) arrayList2.get(i14)).v() || ((asm) arrayList2.get(i14)).r()) {
                                                    if (i15 != -1) {
                                                        String x = ((asm) arrayList2.get(i15)).x();
                                                        if (x.length() == 3) {
                                                            int i16 = 0;
                                                            while (i16 < x.length()) {
                                                                int codePointAt = x.codePointAt(i16);
                                                                if (Character.isLetter(codePointAt)) {
                                                                    i16 += Character.charCount(codePointAt);
                                                                }
                                                            }
                                                        }
                                                    }
                                                    zzay().h.h("Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter.");
                                                    btwVar4.b(i14);
                                                    ak(btwVar4, "_c");
                                                    aj(btwVar4, 19, "currency");
                                                    break;
                                                }
                                                zzay().h.h("Value must be specified with a numeric type.");
                                                btwVar4.b(i14);
                                                ak(btwVar4, "_c");
                                                aj(btwVar4, 18, "value");
                                            }
                                            if ("_e".equals(btwVar4.h())) {
                                                if ("_vs".equals(btwVar4.h())) {
                                                    ag(fitVar);
                                                    if (fit.p("_et", (kk) btwVar4.o()) == null) {
                                                        if (btwVar3 == null || Math.abs(btwVar3.c() - btwVar4.c()) > 1000) {
                                                            btwVar2 = btwVar4;
                                                            i8 = i2;
                                                            i5 = i;
                                                            btwVar = btwVar3;
                                                        } else {
                                                            btw btwVar5 = (btw) btwVar3.clone();
                                                            if (av(btwVar5, btwVar4)) {
                                                                i3 = i2;
                                                                epgVar.f(i3, btwVar5);
                                                                btwVar = null;
                                                                btwVar2 = null;
                                                            } else {
                                                                i3 = i2;
                                                                btwVar2 = btwVar4;
                                                                i5 = i;
                                                                btwVar = btwVar3;
                                                            }
                                                            i8 = i3;
                                                        }
                                                    }
                                                }
                                                i8 = i2;
                                                btwVar = btwVar3;
                                            } else {
                                                ag(fitVar);
                                                if (fit.p("_fr", (kk) btwVar4.o()) == null) {
                                                    if (btwVar2 != null && Math.abs(btwVar2.c() - btwVar4.c()) <= 1000) {
                                                        btw btwVar6 = (btw) btwVar2.clone();
                                                        if (av(btwVar4, btwVar6)) {
                                                            epgVar.f(i5, btwVar6);
                                                            i8 = i2;
                                                            btwVar = null;
                                                            btwVar2 = null;
                                                        }
                                                    }
                                                    btwVar = btwVar4;
                                                    i8 = i;
                                                }
                                                i8 = i2;
                                                btwVar = btwVar3;
                                            }
                                            dkhVar2 = dkhVar;
                                            i4 = i11;
                                            ((ArrayList) dkhVar2.f14303a).set(i4, (kk) btwVar4.o());
                                            i7 = i + 1;
                                            epgVar.ag(btwVar4);
                                        } else {
                                            dkhVar = dkhVar2;
                                        }
                                        if ("_e".equals(btwVar4.h())) {
                                        }
                                        dkhVar2 = dkhVar;
                                        i4 = i11;
                                        ((ArrayList) dkhVar2.f14303a).set(i4, (kk) btwVar4.o());
                                        i7 = i + 1;
                                        epgVar.ag(btwVar4);
                                    }
                                }
                                c2 = 65535;
                                if (c2 != 0) {
                                    i2 = i8;
                                    z = false;
                                    if (z) {
                                    }
                                    if ("_e".equals(btwVar4.h())) {
                                    }
                                    dkhVar2 = dkhVar;
                                    i4 = i11;
                                    ((ArrayList) dkhVar2.f14303a).set(i4, (kk) btwVar4.o());
                                    i7 = i + 1;
                                    epgVar.ag(btwVar4);
                                }
                            } else {
                                if (h.equals("_ug")) {
                                    c2 = 2;
                                    if (c2 != 0) {
                                    }
                                }
                                c2 = 65535;
                                if (c2 != 0) {
                                }
                            }
                        }
                        int i17 = 0;
                        boolean z3 = false;
                        boolean z4 = false;
                        while (true) {
                            z2 = z3;
                            if (i17 >= ((kk) btwVar4.k).r()) {
                                break;
                            }
                            if ("_c".equals(btwVar4.g(i17).u())) {
                                bd bdVar = (bd) btwVar4.g(i17).ah();
                                bdVar.c(1L);
                                btwVar4.d(i17, (asm) bdVar.o());
                                z4 = z4;
                                z3 = true;
                            } else {
                                boolean z5 = z4;
                                if ("_r".equals(btwVar4.g(i17).u())) {
                                    bd bdVar2 = (bd) btwVar4.g(i17).ah();
                                    bdVar2.c(1L);
                                    btwVar4.d(i17, (asm) bdVar2.o());
                                    z3 = z2;
                                    z4 = true;
                                } else {
                                    z3 = z2;
                                    z4 = z5;
                                }
                            }
                            i17++;
                        }
                        boolean z6 = z4;
                        if (z2 || !z) {
                            i2 = i8;
                        } else {
                            i2 = i8;
                            zzay().w().i(cygVar.ap().f(btwVar4.h()), "Marking event as conversion");
                            bd i18 = asm.i();
                            i18.a("_c");
                            i18.c(1L);
                            btwVar4.e(i18);
                        }
                        if (!z6) {
                            zzay().w().i(cygVar.ap().f(btwVar4.h()), "Marking event as real-time");
                            bd i19 = asm.i();
                            i19.a("_r");
                            i19.c(1L);
                            btwVar4.e(i19);
                        }
                        ggz ggzVar4 = this.l;
                        ag(ggzVar4);
                        if (ggzVar4.v(bs(), ((fzb) dkhVar2.f14306d).ch(), 1L, false, false, false, false, true).f17677b > bm().k(((fzb) dkhVar2.f14306d).ch(), gad.k)) {
                            ak(btwVar4, "_r");
                        } else {
                            i9 = 1;
                        }
                        if (dkq.t(btwVar4.h()) && z) {
                            ggz ggzVar5 = this.l;
                            ag(ggzVar5);
                            if (ggzVar5.v(bs(), ((fzb) dkhVar2.f14306d).ch(), 1L, false, false, true, false, false).f17680e > bm().k(((fzb) dkhVar2.f14306d).ch(), gad.s)) {
                                zzay().x().i(bgm.t(((fzb) dkhVar2.f14306d).ch()), "Too many conversions. Not logging as conversion. appId");
                                bd bdVar3 = null;
                                boolean z7 = false;
                                int i20 = -1;
                                for (int i21 = 0; i21 < ((kk) btwVar4.k).r(); i21++) {
                                    asm g2 = btwVar4.g(i21);
                                    bd bdVar4 = bdVar3;
                                    if ("_c".equals(g2.u())) {
                                        bdVar3 = (bd) g2.ah();
                                        i20 = i21;
                                    } else if ("_err".equals(g2.u())) {
                                        bdVar3 = bdVar4;
                                        z7 = true;
                                    } else {
                                        bdVar3 = bdVar4;
                                    }
                                }
                                bd bdVar5 = bdVar3;
                                if (z7) {
                                    if (bdVar5 != null) {
                                        btwVar4.b(i20);
                                    } else {
                                        bdVar5 = null;
                                    }
                                }
                                if (bdVar5 != null) {
                                    bd bdVar6 = (bd) bdVar5.clone();
                                    bdVar6.a("_err");
                                    bdVar6.c(10L);
                                    btwVar4.d(i20, (asm) bdVar6.o());
                                } else {
                                    zzay().v().i(bgm.t(((fzb) dkhVar2.f14306d).ch()), "Did not find conversion parameter. appId");
                                }
                            }
                        }
                        if (z) {
                        }
                        if ("_e".equals(btwVar4.h())) {
                        }
                        dkhVar2 = dkhVar;
                        i4 = i11;
                        ((ArrayList) dkhVar2.f14303a).set(i4, (kk) btwVar4.o());
                        i7 = i + 1;
                        epgVar.ag(btwVar4);
                    }
                    i6 = i4 + 1;
                    l3 = l;
                    str3 = str;
                    str4 = str2;
                }
                long j5 = 0;
                long j6 = 0;
                int i22 = i;
                int i23 = 0;
                while (i23 < i22) {
                    kk df = ((fzb) epgVar.k).df(i23);
                    if ("_e".equals(df.u())) {
                        ag(fitVar);
                        if (fit.p("_fr", df) != null) {
                            epgVar.aq(i23);
                            i22--;
                            i23--;
                            i23++;
                        }
                    }
                    ag(fitVar);
                    asm p = fit.p("_et", df);
                    if (p != null) {
                        Long valueOf = p.v() ? Long.valueOf(p.n()) : null;
                        if (valueOf != null && valueOf.longValue() > 0) {
                            j6 += valueOf.longValue();
                        }
                    }
                    i23++;
                }
                bq(epgVar, j6, false);
                Iterator it = Collections.unmodifiableList(((fzb) epgVar.k).cd()).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if ("_s".equals(((kk) it.next()).u())) {
                        ggz ggzVar6 = this.l;
                        ag(ggzVar6);
                        ggzVar6.aq(epgVar.g(), "_se");
                        break;
                    }
                }
                if (fit.q("_sid", epgVar) >= 0) {
                    bq(epgVar, j6, true);
                } else {
                    int q = fit.q("_se", epgVar);
                    if (q >= 0) {
                        if (epgVar.i) {
                            epgVar.p();
                            epgVar.i = false;
                        }
                        fzb.v((fzb) epgVar.k, q);
                        zzay().v().i(bgm.t(((fzb) dkhVar2.f14306d).ch()), "Session engagement user property is in the bundle without session ID. appId");
                    }
                }
                ag(fitVar);
                fit fitVar3 = fitVar;
                bsz bszVar = fitVar3.f10133a;
                cyg cygVar2 = (cyg) fitVar3.z;
                cygVar2.zzay().w().h("Checking account type status for ad personalization signals");
                dqu dquVar4 = bszVar.u;
                ag(dquVar4);
                if (dquVar4.am(epgVar.g())) {
                    ggz ggzVar7 = bszVar.l;
                    ag(ggzVar7);
                    cyo ay = ggzVar7.ay(epgVar.g());
                    if (ay != null && ay.bg() && cygVar2.ar().m()) {
                        cygVar2.zzay().o.h("Turning off ad personalization due to account type");
                        eft b2 = ne.b();
                        b2.a("_npa");
                        b2.b(cygVar2.ar().j());
                        b2.c(1L);
                        ne neVar = (ne) b2.o();
                        int i24 = 0;
                        while (true) {
                            if (i24 >= ((fzb) epgVar.k).bs()) {
                                if (epgVar.i) {
                                    epgVar.p();
                                    epgVar.i = false;
                                }
                                fzb.bc((fzb) epgVar.k, neVar);
                            } else if ("_npa".equals(((fzb) epgVar.k).dc(i24).p())) {
                                if (epgVar.i) {
                                    epgVar.p();
                                    epgVar.i = false;
                                }
                                fzb.b((fzb) epgVar.k, i24, neVar);
                            } else {
                                i24++;
                            }
                        }
                    }
                }
                if (epgVar.i) {
                    epgVar.p();
                    epgVar.i = false;
                }
                fzb.bq((fzb) epgVar.k, Long.MAX_VALUE);
                if (epgVar.i) {
                    epgVar.p();
                    epgVar.i = false;
                }
                fzb.at((fzb) epgVar.k, Long.MIN_VALUE);
                for (int i25 = 0; i25 < ((fzb) epgVar.k).cs(); i25++) {
                    kk df2 = ((fzb) epgVar.k).df(i25);
                    if (df2.k() < ((fzb) epgVar.k).dz()) {
                        long k = df2.k();
                        if (epgVar.i) {
                            epgVar.p();
                            epgVar.i = false;
                        }
                        fzb.bq((fzb) epgVar.k, k);
                    }
                    if (df2.k() > ((fzb) epgVar.k).dy()) {
                        long k2 = df2.k();
                        if (epgVar.i) {
                            epgVar.p();
                            epgVar.i = false;
                        }
                        fzb.at((fzb) epgVar.k, k2);
                    }
                }
                epgVar.aw();
                epgVar.bd();
                dqg dqgVar = this.af;
                ag(dqgVar);
                epgVar.ap(dqgVar.k(epgVar.g(), Collections.unmodifiableList(((fzb) epgVar.k).cd()), epgVar.ax(), Long.valueOf(((fzb) epgVar.k).dz()), Long.valueOf(((fzb) epgVar.k).dy())));
                if (bm().l(((fzb) dkhVar2.f14306d).ch())) {
                    HashMap hashMap = new HashMap();
                    ArrayList arrayList3 = new ArrayList();
                    SecureRandom av = ap().av();
                    int i26 = 0;
                    while (i26 < ((fzb) epgVar.k).cs()) {
                        btw btwVar7 = (btw) ((fzb) epgVar.k).df(i26).ah();
                        if (btwVar7.h().equals("_ep")) {
                            ag(fitVar3);
                            String str5 = (String) fit.t("_en", (kk) btwVar7.o());
                            bwz bwzVar = (bwz) hashMap.get(str5);
                            if (bwzVar == null) {
                                ggz ggzVar8 = this.l;
                                ag(ggzVar8);
                                j3 = j5;
                                String ch = ((fzb) dkhVar2.f14306d).ch();
                                ckd.k(str5);
                                bwzVar = ggzVar8.as(ch, str5);
                                if (bwzVar != null) {
                                    hashMap.put(str5, bwzVar);
                                }
                            } else {
                                j3 = j5;
                            }
                            if (bwzVar == null || bwzVar.f12355g != null) {
                                l2 = l;
                            } else {
                                Long l4 = bwzVar.i;
                                if (l4 != null && l4.longValue() > 1) {
                                    ag(fitVar3);
                                    fit.al(btwVar7, "_sr", bwzVar.i);
                                }
                                Boolean bool = bwzVar.f12350b;
                                if (bool == null || !bool.booleanValue()) {
                                    l2 = l;
                                } else {
                                    ag(fitVar3);
                                    l2 = l;
                                    fit.al(btwVar7, "_efs", l2);
                                }
                                arrayList3.add((kk) btwVar7.o());
                            }
                            epgVar.f(i26, btwVar7);
                            l = l2;
                            fitVar2 = fitVar3;
                        } else {
                            j3 = j5;
                            Long l5 = l;
                            ag(dquVar);
                            String ch2 = ((fzb) dkhVar2.f14306d).ch();
                            String c3 = dquVar.c(ch2, "measurement.account.time_zone_offset_minutes");
                            if (TextUtils.isEmpty(c3)) {
                                fitVar2 = fitVar3;
                            } else {
                                try {
                                    parseLong = Long.parseLong(c3);
                                    fitVar2 = fitVar3;
                                } catch (NumberFormatException e2) {
                                    fitVar2 = fitVar3;
                                    ((cyg) dquVar.z).zzay().x().e(bgm.t(ch2), "Unable to parse timezone offset. appId", e2);
                                }
                                ap();
                                long j7 = parseLong * 60000;
                                long c4 = (btwVar7.c() + j7) / AdBaseConstants.DEFAULT_DELAY_TIMESTAMP;
                                kk kkVar = (kk) btwVar7.o();
                                if (!TextUtils.isEmpty("_dbg")) {
                                    Iterator it2 = kkVar.q().iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            break;
                                        }
                                        asm asmVar = (asm) it2.next();
                                        if ("_dbg".equals(asmVar.u())) {
                                            if (l5.equals(Long.valueOf(asmVar.n()))) {
                                                v = 1;
                                            }
                                        }
                                    }
                                }
                                ag(dquVar);
                                v = dquVar.v(((fzb) dkhVar2.f14306d).ch(), btwVar7.h());
                                if (v > 0) {
                                    zzay().x().e(btwVar7.h(), "Sample rate must be positive. event, rate", Integer.valueOf(v));
                                    arrayList3.add((kk) btwVar7.o());
                                    epgVar.f(i26, btwVar7);
                                    l = l5;
                                } else {
                                    bwz bwzVar2 = (bwz) hashMap.get(btwVar7.h());
                                    if (bwzVar2 == null) {
                                        ggz ggzVar9 = this.l;
                                        ag(ggzVar9);
                                        j4 = j7;
                                        bwzVar2 = ggzVar9.as(((fzb) dkhVar2.f14306d).ch(), btwVar7.h());
                                        if (bwzVar2 == null) {
                                            dquVar3 = dquVar;
                                            zzay().x().e(((fzb) dkhVar2.f14306d).ch(), "Event being bundled has no eventAggregate. appId, eventName", btwVar7.h());
                                            bwzVar2 = new bwz(((fzb) dkhVar2.f14306d).ch(), btwVar7.h(), 1L, 1L, 1L, btwVar7.c(), 0L, null, null, null, null);
                                            ag(fitVar2);
                                            Long l6 = (Long) fit.t("_eid", (kk) btwVar7.o());
                                            boolean z8 = l6 == null;
                                            if (v != 1) {
                                                arrayList3.add((kk) btwVar7.o());
                                                if (z8 && (bwzVar2.f12355g != null || bwzVar2.i != null || bwzVar2.f12350b != null)) {
                                                    hashMap.put(btwVar7.h(), bwzVar2.l(null, null, null));
                                                }
                                                epgVar.f(i26, btwVar7);
                                                l = l5;
                                            } else {
                                                if (av.nextInt(v) == 0) {
                                                    ag(fitVar2);
                                                    boolean z9 = z8;
                                                    Long valueOf2 = Long.valueOf(v);
                                                    fit.al(btwVar7, "_sr", valueOf2);
                                                    arrayList3.add((kk) btwVar7.o());
                                                    if (z9) {
                                                        bwzVar2 = bwzVar2.l(null, valueOf2, null);
                                                    }
                                                    hashMap.put(btwVar7.h(), new bwz(bwzVar2.f12353e, bwzVar2.h, bwzVar2.j, bwzVar2.f12351c, bwzVar2.f12352d, bwzVar2.f12354f, btwVar7.c(), Long.valueOf(c4), bwzVar2.f12355g, bwzVar2.i, bwzVar2.f12350b));
                                                    l = l5;
                                                } else {
                                                    boolean z10 = z8;
                                                    Long l7 = bwzVar2.f12349a;
                                                    if (l7 != null) {
                                                        f2 = l7.longValue();
                                                    } else {
                                                        ap();
                                                        f2 = (j4 + btwVar7.f()) / AdBaseConstants.DEFAULT_DELAY_TIMESTAMP;
                                                    }
                                                    if (f2 != c4) {
                                                        ag(fitVar2);
                                                        fit.al(btwVar7, "_efs", l5);
                                                        ag(fitVar2);
                                                        Long valueOf3 = Long.valueOf(v);
                                                        fit.al(btwVar7, "_sr", valueOf3);
                                                        arrayList3.add((kk) btwVar7.o());
                                                        if (z10) {
                                                            bwzVar2 = bwzVar2.l(null, valueOf3, Boolean.TRUE);
                                                        }
                                                        l = l5;
                                                        hashMap.put(btwVar7.h(), new bwz(bwzVar2.f12353e, bwzVar2.h, bwzVar2.j, bwzVar2.f12351c, bwzVar2.f12352d, bwzVar2.f12354f, btwVar7.c(), Long.valueOf(c4), bwzVar2.f12355g, bwzVar2.i, bwzVar2.f12350b));
                                                    } else {
                                                        l = l5;
                                                        if (z10) {
                                                            hashMap.put(btwVar7.h(), bwzVar2.l(l6, null, null));
                                                        }
                                                    }
                                                }
                                                epgVar.f(i26, btwVar7);
                                            }
                                            i26++;
                                            dquVar = dquVar3;
                                            fitVar3 = fitVar2;
                                            j5 = j3;
                                        }
                                    } else {
                                        j4 = j7;
                                    }
                                    dquVar3 = dquVar;
                                    ag(fitVar2);
                                    Long l62 = (Long) fit.t("_eid", (kk) btwVar7.o());
                                    if (l62 == null) {
                                    }
                                    if (v != 1) {
                                    }
                                    i26++;
                                    dquVar = dquVar3;
                                    fitVar3 = fitVar2;
                                    j5 = j3;
                                }
                            }
                            parseLong = j3;
                            ap();
                            long j72 = parseLong * 60000;
                            long c42 = (btwVar7.c() + j72) / AdBaseConstants.DEFAULT_DELAY_TIMESTAMP;
                            kk kkVar2 = (kk) btwVar7.o();
                            if (!TextUtils.isEmpty("_dbg")) {
                            }
                            ag(dquVar);
                            v = dquVar.v(((fzb) dkhVar2.f14306d).ch(), btwVar7.h());
                            if (v > 0) {
                            }
                        }
                        dquVar3 = dquVar;
                        i26++;
                        dquVar = dquVar3;
                        fitVar3 = fitVar2;
                        j5 = j3;
                    }
                    j2 = j5;
                    dquVar2 = dquVar;
                    if (arrayList3.size() < ((fzb) epgVar.k).cs()) {
                        if (epgVar.i) {
                            epgVar.p();
                            epgVar.i = false;
                        }
                        fzb.i((fzb) epgVar.k);
                        epgVar.x(arrayList3);
                    }
                    for (Map.Entry entry : hashMap.entrySet()) {
                        ggz ggzVar10 = this.l;
                        ag(ggzVar10);
                        ggzVar10.bi((bwz) entry.getValue());
                    }
                } else {
                    j2 = 0;
                    dquVar2 = dquVar;
                }
                String ch3 = ((fzb) dkhVar2.f14306d).ch();
                ggz ggzVar11 = this.l;
                ag(ggzVar11);
                cyo ay2 = ggzVar11.ay(ch3);
                if (ay2 == null) {
                    zzay().v().i(bgm.t(((fzb) dkhVar2.f14306d).ch()), "Bundling raw events w/o app info. appId");
                } else if (((fzb) epgVar.k).cs() > 0) {
                    fth fthVar = ay2.k.j;
                    cyg.ak(fthVar);
                    fthVar._e();
                    long j8 = ay2.u;
                    if (j8 != j2) {
                        epgVar.au(j8);
                    } else {
                        epgVar.aa();
                    }
                    fth fthVar2 = ay2.k.j;
                    cyg.ak(fthVar2);
                    fthVar2._e();
                    long j9 = ay2.f13769b;
                    if (j9 != j2) {
                        j8 = j9;
                    }
                    if (j8 != j2) {
                        epgVar.r(j8);
                    } else {
                        epgVar.s();
                    }
                    ay2.ar();
                    fth fthVar3 = ay2.k.j;
                    cyg.ak(fthVar3);
                    fthVar3._e();
                    epgVar.bc((int) ay2.ad);
                    ay2.aw(((fzb) epgVar.k).dz());
                    ay2.as(((fzb) epgVar.k).dy());
                    String bl = ay2.bl();
                    if (bl != null) {
                        epgVar.ab(bl);
                    } else {
                        epgVar.ay();
                    }
                    ggz ggzVar12 = this.l;
                    ag(ggzVar12);
                    ggzVar12.ax(ay2);
                }
                if (((fzb) epgVar.k).cs() > 0) {
                    cygVar.getClass();
                    ag(dquVar2);
                    clv ap = dquVar2.ap(((fzb) dkhVar2.f14306d).ch());
                    try {
                        try {
                            if (ap != null && ap.i()) {
                                long h2 = ap.h();
                                if (epgVar.i) {
                                    epgVar.p();
                                    epgVar.i = false;
                                }
                                fzb.n((fzb) epgVar.k, h2);
                                ggzVar = this.l;
                                ag(ggzVar);
                                fzbVar = (fzb) epgVar.o();
                                ggzVar._e();
                                ggzVar.n();
                                ckd.bf(fzbVar.ch());
                                ckd.t(fzbVar.de());
                                ggzVar.at();
                                ((czz) ((cyg) ggzVar.z).zzav()).getClass();
                                currentTimeMillis = System.currentTimeMillis();
                                dy = fzbVar.dy();
                                ((cyg) ggzVar.z).getClass();
                                twVar = gad.f17776ab;
                                if (dy >= currentTimeMillis - ((Long) twVar.h(null)).longValue()) {
                                    long dy2 = fzbVar.dy();
                                    ((cyg) ggzVar.z).getClass();
                                }
                                ((cyg) ggzVar.z).zzay().x().f("Storing bundle outside of the max uploading time span. appId, now, timestamp", bgm.t(fzbVar.ch()), Long.valueOf(currentTimeMillis), Long.valueOf(fzbVar.dy()));
                                byte[] z11 = fzbVar.z();
                                fit fitVar4 = ggzVar.f10133a.f12159e;
                                ag(fitVar4);
                                byte[] ay3 = fitVar4.ay(z11);
                                ((cyg) ggzVar.z).zzay().w().i(Integer.valueOf(ay3.length), "Saving bundle, size");
                                contentValues = new ContentValues();
                                contentValues.put(PluginConstants.KEY_APP_ID, fzbVar.ch());
                                contentValues.put("bundle_end_timestamp", Long.valueOf(fzbVar.dy()));
                                contentValues.put("data", ay3);
                                contentValues.put("has_realtime", Integer.valueOf(i9));
                                if (fzbVar.di()) {
                                    contentValues.put("retry_count", Integer.valueOf(fzbVar.dh()));
                                }
                                if (ggzVar.bg().insert("queue", null, contentValues) == -1) {
                                    ((cyg) ggzVar.z).zzay().v().i(bgm.t(fzbVar.ch()), "Failed to insert bundle (got -1). appId");
                                }
                            }
                            if (ggzVar.bg().insert("queue", null, contentValues) == -1) {
                            }
                        } catch (SQLiteException e3) {
                            ((cyg) ggzVar.z).zzay().v().e(bgm.t(fzbVar.ch()), "Error storing bundle. appId", e3);
                        }
                        fit fitVar42 = ggzVar.f10133a.f12159e;
                        ag(fitVar42);
                        byte[] ay32 = fitVar42.ay(z11);
                        ((cyg) ggzVar.z).zzay().w().i(Integer.valueOf(ay32.length), "Saving bundle, size");
                        contentValues = new ContentValues();
                        contentValues.put(PluginConstants.KEY_APP_ID, fzbVar.ch());
                        contentValues.put("bundle_end_timestamp", Long.valueOf(fzbVar.dy()));
                        contentValues.put("data", ay32);
                        contentValues.put("has_realtime", Integer.valueOf(i9));
                        if (fzbVar.di()) {
                        }
                    } catch (IOException e4) {
                        ((cyg) ggzVar.z).zzay().v().e(bgm.t(fzbVar.ch()), "Data loss. Failed to serialize bundle. appId", e4);
                    }
                    if (((fzb) dkhVar2.f14306d).dk().isEmpty()) {
                        if (epgVar.i) {
                            epgVar.p();
                            epgVar.i = false;
                        }
                        fzb.n((fzb) epgVar.k, -1L);
                    } else {
                        zzay().x().i(bgm.t(((fzb) dkhVar2.f14306d).ch()), "Did not find measurement config or missing version info. appId");
                    }
                    ggzVar = this.l;
                    ag(ggzVar);
                    fzbVar = (fzb) epgVar.o();
                    ggzVar._e();
                    ggzVar.n();
                    ckd.bf(fzbVar.ch());
                    ckd.t(fzbVar.de());
                    ggzVar.at();
                    ((czz) ((cyg) ggzVar.z).zzav()).getClass();
                    currentTimeMillis = System.currentTimeMillis();
                    dy = fzbVar.dy();
                    ((cyg) ggzVar.z).getClass();
                    twVar = gad.f17776ab;
                    if (dy >= currentTimeMillis - ((Long) twVar.h(null)).longValue()) {
                    }
                    ((cyg) ggzVar.z).zzay().x().f("Storing bundle outside of the max uploading time span. appId, now, timestamp", bgm.t(fzbVar.ch()), Long.valueOf(currentTimeMillis), Long.valueOf(fzbVar.dy()));
                    byte[] z112 = fzbVar.z();
                }
                ggz ggzVar13 = this.l;
                ag(ggzVar13);
                ArrayList arrayList4 = (ArrayList) dkhVar2.f14307e;
                ckd.k(arrayList4);
                ggzVar13._e();
                ggzVar13.n();
                StringBuilder sb = new StringBuilder("rowid in (");
                for (int i27 = 0; i27 < arrayList4.size(); i27++) {
                    if (i27 != 0) {
                        sb.append(",");
                    }
                    sb.append(((Long) arrayList4.get(i27)).longValue());
                }
                sb.append(")");
                int delete = ggzVar13.bg().delete("raw_events", sb.toString(), null);
                if (delete != arrayList4.size()) {
                    ((cyg) ggzVar13.z).zzay().v().e(Integer.valueOf(delete), "Deleted fewer rows from raw events table than expected", Integer.valueOf(arrayList4.size()));
                }
                ggz ggzVar14 = this.l;
                ag(ggzVar14);
                try {
                    ggzVar14.bg().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{ch3, ch3});
                } catch (SQLiteException e5) {
                    ((cyg) ggzVar14.z).zzay().v().e(bgm.t(ch3), "Failed to remove unused event metadata. appId", e5);
                }
                ggz ggzVar15 = this.l;
                ag(ggzVar15);
                ggzVar15.av();
                ggz ggzVar16 = this.l;
                ag(ggzVar16);
                ggzVar16.an();
                return true;
            }
            ggz ggzVar17 = this.l;
            ag(ggzVar17);
            ggzVar17.av();
            ggz ggzVar18 = this.l;
            ag(ggzVar18);
            ggzVar18.an();
            return false;
        } catch (Throwable th) {
            ggz ggzVar19 = this.l;
            ag(ggzVar19);
            ggzVar19.an();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004d A[Catch: all -> 0x005e, TRY_LEAVE, TryCatch #1 {all -> 0x005e, blocks: (B:5:0x002e, B:13:0x004d, B:14:0x0181, B:23:0x006b, B:27:0x00cd, B:28:0x00b9, B:30:0x00d4, B:32:0x00e0, B:34:0x00e6, B:35:0x00ee, B:38:0x00ff, B:40:0x010b, B:42:0x0111, B:46:0x011e, B:47:0x0134, B:49:0x014e, B:50:0x0169, B:52:0x0174, B:54:0x017a, B:55:0x017e, B:56:0x015a, B:57:0x0125, B:59:0x012e), top: B:4:0x002e, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014e A[Catch: all -> 0x005e, TryCatch #1 {all -> 0x005e, blocks: (B:5:0x002e, B:13:0x004d, B:14:0x0181, B:23:0x006b, B:27:0x00cd, B:28:0x00b9, B:30:0x00d4, B:32:0x00e0, B:34:0x00e6, B:35:0x00ee, B:38:0x00ff, B:40:0x010b, B:42:0x0111, B:46:0x011e, B:47:0x0134, B:49:0x014e, B:50:0x0169, B:52:0x0174, B:54:0x017a, B:55:0x017e, B:56:0x015a, B:57:0x0125, B:59:0x012e), top: B:4:0x002e, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0174 A[Catch: all -> 0x005e, TryCatch #1 {all -> 0x005e, blocks: (B:5:0x002e, B:13:0x004d, B:14:0x0181, B:23:0x006b, B:27:0x00cd, B:28:0x00b9, B:30:0x00d4, B:32:0x00e0, B:34:0x00e6, B:35:0x00ee, B:38:0x00ff, B:40:0x010b, B:42:0x0111, B:46:0x011e, B:47:0x0134, B:49:0x014e, B:50:0x0169, B:52:0x0174, B:54:0x017a, B:55:0x017e, B:56:0x015a, B:57:0x0125, B:59:0x012e), top: B:4:0x002e, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015a A[Catch: all -> 0x005e, TryCatch #1 {all -> 0x005e, blocks: (B:5:0x002e, B:13:0x004d, B:14:0x0181, B:23:0x006b, B:27:0x00cd, B:28:0x00b9, B:30:0x00d4, B:32:0x00e0, B:34:0x00e6, B:35:0x00ee, B:38:0x00ff, B:40:0x010b, B:42:0x0111, B:46:0x011e, B:47:0x0134, B:49:0x014e, B:50:0x0169, B:52:0x0174, B:54:0x017a, B:55:0x017e, B:56:0x015a, B:57:0x0125, B:59:0x012e), top: B:4:0x002e, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012e A[Catch: all -> 0x005e, TryCatch #1 {all -> 0x005e, blocks: (B:5:0x002e, B:13:0x004d, B:14:0x0181, B:23:0x006b, B:27:0x00cd, B:28:0x00b9, B:30:0x00d4, B:32:0x00e0, B:34:0x00e6, B:35:0x00ee, B:38:0x00ff, B:40:0x010b, B:42:0x0111, B:46:0x011e, B:47:0x0134, B:49:0x014e, B:50:0x0169, B:52:0x0174, B:54:0x017a, B:55:0x017e, B:56:0x015a, B:57:0x0125, B:59:0x012e), top: B:4:0x002e, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void am(String str, int i, Throwable th, byte[] bArr, Map map) {
        boolean z;
        String str2;
        fit fitVar;
        zzaz()._e();
        bi();
        ckd.bf(str);
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.p = false;
                bd();
                throw th2;
            }
        }
        dvb dvbVar = zzay().f11519c;
        Integer valueOf = Integer.valueOf(bArr.length);
        dvbVar.i(valueOf, "onConfigFetched. Response size");
        ggz ggzVar = this.l;
        ag(ggzVar);
        ggzVar.ap();
        try {
            ggz ggzVar2 = this.l;
            ag(ggzVar2);
            cyo ay = ggzVar2.ay(str);
            if (i != 200 && i != 204) {
                if (i == 304) {
                    i = MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_THRESHOLD;
                }
                z = false;
                if (ay == null) {
                    zzay().f11520g.i(bgm.t(str), "App does not exist in onConfigFetched. appId");
                } else {
                    dqu dquVar = this.u;
                    if (z || i == 404) {
                        List list = map != null ? (List) map.get("Last-Modified") : null;
                        String str3 = (list == null || list.isEmpty()) ? null : (String) list.get(0);
                        fui.c();
                        if (bm().g(null, gad.ah)) {
                            List list2 = map != null ? (List) map.get("ETag") : null;
                            if (list2 != null && !list2.isEmpty()) {
                                str2 = (String) list2.get(0);
                                if (i != 404 && i != 304) {
                                    ag(dquVar);
                                    dquVar.aq(str, str3, str2, bArr);
                                    ((czz) zzav()).getClass();
                                    ay.bn(System.currentTimeMillis());
                                    ggz ggzVar3 = this.l;
                                    ag(ggzVar3);
                                    ggzVar3.ax(ay);
                                    if (i != 404) {
                                        zzay().h.i(str, "Config not found. Using empty config. appId");
                                    } else {
                                        zzay().f11519c.e(Integer.valueOf(i), "Successfully fetched config. Got network response. code, size", valueOf);
                                    }
                                    fitVar = this.z;
                                    ag(fitVar);
                                    if (fitVar.aw() || !bl()) {
                                        ar();
                                    } else {
                                        bf();
                                    }
                                }
                                ag(dquVar);
                                if (dquVar.ap(str) == null) {
                                    ag(dquVar);
                                    dquVar.aq(str, null, null, null);
                                }
                                ((czz) zzav()).getClass();
                                ay.bn(System.currentTimeMillis());
                                ggz ggzVar32 = this.l;
                                ag(ggzVar32);
                                ggzVar32.ax(ay);
                                if (i != 404) {
                                }
                                fitVar = this.z;
                                ag(fitVar);
                                if (fitVar.aw()) {
                                }
                                ar();
                            }
                        }
                        str2 = null;
                        if (i != 404) {
                            ag(dquVar);
                            dquVar.aq(str, str3, str2, bArr);
                            ((czz) zzav()).getClass();
                            ay.bn(System.currentTimeMillis());
                            ggz ggzVar322 = this.l;
                            ag(ggzVar322);
                            ggzVar322.ax(ay);
                            if (i != 404) {
                            }
                            fitVar = this.z;
                            ag(fitVar);
                            if (fitVar.aw()) {
                            }
                            ar();
                        }
                        ag(dquVar);
                        if (dquVar.ap(str) == null) {
                        }
                        ((czz) zzav()).getClass();
                        ay.bn(System.currentTimeMillis());
                        ggz ggzVar3222 = this.l;
                        ag(ggzVar3222);
                        ggzVar3222.ax(ay);
                        if (i != 404) {
                        }
                        fitVar = this.z;
                        ag(fitVar);
                        if (fitVar.aw()) {
                        }
                        ar();
                    } else {
                        ((czz) zzav()).getClass();
                        ay.ba(System.currentTimeMillis());
                        ggz ggzVar4 = this.l;
                        ag(ggzVar4);
                        ggzVar4.ax(ay);
                        zzay().f11519c.e(Integer.valueOf(i), "Fetching config failed. code, error", th);
                        ag(dquVar);
                        dquVar._e();
                        dquVar.r.put(str, null);
                        fou fouVar = this.y.f9873g;
                        ((czz) zzav()).getClass();
                        fouVar.g(System.currentTimeMillis());
                        if (i == 503 || i == 429) {
                            fou fouVar2 = this.y.f9871c;
                            ((czz) zzav()).getClass();
                            fouVar2.g(System.currentTimeMillis());
                        }
                        ar();
                    }
                }
                ggz ggzVar5 = this.l;
                ag(ggzVar5);
                ggzVar5.av();
                this.p = false;
                bd();
            }
            if (th == null) {
                z = true;
                if (ay == null) {
                }
                ggz ggzVar52 = this.l;
                ag(ggzVar52);
                ggzVar52.av();
                this.p = false;
                bd();
            }
            z = false;
            if (ay == null) {
            }
            ggz ggzVar522 = this.l;
            ag(ggzVar522);
            ggzVar522.av();
            this.p = false;
            bd();
        } finally {
            ggz ggzVar6 = this.l;
            ag(ggzVar6);
            ggzVar6.an();
        }
    }

    public final void an(cmd cmdVar, afh afhVar) {
        zzaz()._e();
        bi();
        if (ah(afhVar)) {
            if (!afhVar.zzh) {
                bp(afhVar);
                return;
            }
            if ("_npa".equals(cmdVar.zzb) && afhVar.zzr != null) {
                zzay().o.h("Falling back to manifest metadata value for ad personalization");
                ((czz) zzav()).getClass();
                aq(new cmd("_npa", System.currentTimeMillis(), Long.valueOf(true != afhVar.zzr.booleanValue() ? 0L : 1L), LiveConfigKey.AUTO), afhVar);
                return;
            }
            dvb dvbVar = zzay().o;
            cyg cygVar = this.m;
            dvbVar.i(cygVar.af.i(cmdVar.zzb), "Removing user property");
            ggz ggzVar = this.l;
            ag(ggzVar);
            ggzVar.ap();
            try {
                bp(afhVar);
                if (ada.COLUMN_ID.equals(cmdVar.zzb)) {
                    ggz ggzVar2 = this.l;
                    ag(ggzVar2);
                    String str = afhVar.zza;
                    ckd.k(str);
                    ggzVar2.aq(str, "_lair");
                }
                ggz ggzVar3 = this.l;
                ag(ggzVar3);
                String str2 = afhVar.zza;
                ckd.k(str2);
                ggzVar3.aq(str2, cmdVar.zzb);
                ggz ggzVar4 = this.l;
                ag(ggzVar4);
                ggzVar4.av();
                zzay().o.i(cygVar.af.i(cmdVar.zzb), "User property removed");
                ggz ggzVar5 = this.l;
                ag(ggzVar5);
                ggzVar5.an();
            } catch (Throwable th) {
                ggz ggzVar6 = this.l;
                ag(ggzVar6);
                ggzVar6.an();
                throw th;
            }
        }
    }

    public final ggz ao() {
        ggz ggzVar = this.l;
        ag(ggzVar);
        return ggzVar;
    }

    public final dkq ap() {
        cyg cygVar = this.m;
        ckd.k(cygVar);
        dkq dkqVar = cygVar.m;
        cyg.ai(dkqVar);
        return dkqVar;
    }

    public final void aq(cmd cmdVar, afh afhVar) {
        long j;
        zzaz()._e();
        bi();
        if (ah(afhVar)) {
            if (!afhVar.zzh) {
                bp(afhVar);
                return;
            }
            int bp = ap().bp(cmdVar.zzb);
            ecv ecvVar = this.r;
            if (bp != 0) {
                ap();
                String str = cmdVar.zzb;
                bm();
                String s = dkq.s(24, str, true);
                String str2 = cmdVar.zzb;
                int length = str2 != null ? str2.length() : 0;
                ap();
                dkq.v(ecvVar, afhVar.zza, bp, "_ev", s, length);
                return;
            }
            int bw = ap().bw(cmdVar.zza(), cmdVar.zzb);
            if (bw != 0) {
                ap();
                String str3 = cmdVar.zzb;
                bm();
                String s2 = dkq.s(24, str3, true);
                Object zza = cmdVar.zza();
                int length2 = (zza == null || !((zza instanceof String) || (zza instanceof CharSequence))) ? 0 : zza.toString().length();
                ap();
                dkq.v(ecvVar, afhVar.zza, bw, "_ev", s2, length2);
                return;
            }
            Object bj = ap().bj(cmdVar.zza(), cmdVar.zzb);
            if (bj == null) {
                return;
            }
            if ("_sid".equals(cmdVar.zzb)) {
                long j2 = cmdVar.zzc;
                String str4 = cmdVar.zzf;
                String str5 = afhVar.zza;
                ckd.k(str5);
                ggz ggzVar = this.l;
                ag(ggzVar);
                ffu al = ggzVar.al(str5, "_sno");
                if (al != null) {
                    Object obj = al.f16725b;
                    if (obj instanceof Long) {
                        j = ((Long) obj).longValue();
                        aq(new cmd("_sno", j2, Long.valueOf(j + 1), str4), afhVar);
                    }
                }
                if (al != null) {
                    zzay().f11520g.i(al.f16725b, "Retrieved last session number from database does not contain a valid (long) value");
                }
                ggz ggzVar2 = this.l;
                ag(ggzVar2);
                bwz as = ggzVar2.as(str5, "_s");
                if (as != null) {
                    j = as.j;
                    zzay().f11519c.i(Long.valueOf(j), "Backfill the session number. Last used session number");
                } else {
                    j = 0;
                }
                aq(new cmd("_sno", j2, Long.valueOf(j + 1), str4), afhVar);
            }
            String str6 = afhVar.zza;
            ckd.k(str6);
            String str7 = cmdVar.zzf;
            ckd.k(str7);
            ffu ffuVar = new ffu(str6, str7, cmdVar.zzb, cmdVar.zzc, bj);
            dvb dvbVar = zzay().f11519c;
            cyg cygVar = this.m;
            ebl eblVar = cygVar.af;
            String str8 = ffuVar.f16728e;
            dvbVar.e(eblVar.i(str8), "Setting user property", bj);
            ggz ggzVar3 = this.l;
            ag(ggzVar3);
            ggzVar3.ap();
            try {
                boolean equals = ada.COLUMN_ID.equals(str8);
                Object obj2 = ffuVar.f16725b;
                if (equals) {
                    ggz ggzVar4 = this.l;
                    ag(ggzVar4);
                    ffu al2 = ggzVar4.al(afhVar.zza, ada.COLUMN_ID);
                    if (al2 != null && !obj2.equals(al2.f16725b)) {
                        ggz ggzVar5 = this.l;
                        ag(ggzVar5);
                        ggzVar5.aq(afhVar.zza, "_lair");
                    }
                }
                bp(afhVar);
                ggz ggzVar6 = this.l;
                ag(ggzVar6);
                boolean bc = ggzVar6.bc(ffuVar);
                ggz ggzVar7 = this.l;
                ag(ggzVar7);
                ggzVar7.av();
                if (!bc) {
                    zzay().f11518b.e(cygVar.af.i(str8), "Too many unique user properties are set. Ignoring user property", obj2);
                    ap();
                    dkq.v(ecvVar, afhVar.zza, 9, null, null, 0);
                }
                ggz ggzVar8 = this.l;
                ag(ggzVar8);
                ggzVar8.an();
            } catch (Throwable th) {
                ggz ggzVar9 = this.l;
                ag(ggzVar9);
                ggzVar9.an();
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ar() {
        boolean z;
        long max;
        long max2;
        long j;
        long j2;
        int checkSelfPermission;
        Integer num;
        int intValue;
        fit fitVar = this.f12159e;
        zzaz()._e();
        bi();
        if (this.h > 0) {
            ((czz) zzav()).getClass();
            long abs = 3600000 - Math.abs(SystemClock.elapsedRealtime() - this.h);
            if (abs > 0) {
                zzay().f11519c.i(Long.valueOf(abs), "Upload has been suspended. Will update scheduling later in approximately ms");
                bo().g();
                uk ukVar = this.s;
                ag(ukVar);
                ukVar.zza();
                return;
            }
            this.h = 0L;
        }
        if (!this.m.au() || !bl()) {
            zzay().f11519c.h("Nothing to upload or uploading impossible");
            bo().g();
            uk ukVar2 = this.s;
            ag(ukVar2);
            ukVar2.zza();
            return;
        }
        ((czz) zzav()).getClass();
        long currentTimeMillis = System.currentTimeMillis();
        bm();
        long max3 = Math.max(0L, ((Long) gad.bc.h(null)).longValue());
        ggz ggzVar = this.l;
        ag(ggzVar);
        if (ggzVar.ar("select count(1) > 0 from raw_events where realtime = 1", null) == 0) {
            ggz ggzVar2 = this.l;
            ag(ggzVar2);
            if (ggzVar2.ar("select count(1) > 0 from queue where has_realtime = 1", null) == 0) {
                z = false;
                if (z) {
                    bm();
                    max = Math.max(0L, ((Long) gad.bd.h(null)).longValue());
                } else {
                    String u = bm().u("debug.firebase.analytics.app");
                    if (TextUtils.isEmpty(u) || ".none.".equals(u)) {
                        bm();
                        max = Math.max(0L, ((Long) gad.aa.h(null)).longValue());
                    } else {
                        bm();
                        max = Math.max(0L, ((Long) gad.ai.h(null)).longValue());
                    }
                }
                long f2 = this.y.f9870b.f();
                long f3 = this.y.f9873g.f();
                ggz ggzVar3 = this.l;
                ag(ggzVar3);
                long bd = ggzVar3.bd("select max(bundle_end_timestamp) from queue", null, 0L);
                ggz ggzVar4 = this.l;
                ag(ggzVar4);
                max2 = Math.max(bd, ggzVar4.bd("select max(timestamp) from raw_events", null, 0L));
                if (max2 != 0) {
                    j = 0;
                    j2 = 0;
                } else {
                    long abs2 = currentTimeMillis - Math.abs(max2 - currentTimeMillis);
                    long abs3 = Math.abs(f2 - currentTimeMillis);
                    long abs4 = Math.abs(f3 - currentTimeMillis);
                    long j3 = 0;
                    long j4 = currentTimeMillis - abs4;
                    long max4 = Math.max(currentTimeMillis - abs3, j4);
                    j = max3 + abs2;
                    if (z && max4 > 0) {
                        j = Math.min(abs2, max4) + max;
                    }
                    ag(fitVar);
                    if (!fitVar.aq(max4, max)) {
                        j = max4 + max;
                    }
                    if (j4 != 0 && j4 >= abs2) {
                        int i = 0;
                        while (true) {
                            bm();
                            if (i >= Math.min(20, Math.max(0, ((Integer) gad.ad.h(null)).intValue()))) {
                                j = 0;
                                break;
                            }
                            bm();
                            j += Math.max(j3, ((Long) gad.u.h(null)).longValue()) * (1 << i);
                            if (j > j4) {
                                break;
                            }
                            i++;
                            j3 = 0;
                        }
                    }
                    j2 = 0;
                }
                if (j != j2) {
                    zzay().f11519c.h("Next upload time is 0");
                    bo().g();
                    uk ukVar3 = this.s;
                    ag(ukVar3);
                    ukVar3.zza();
                    return;
                }
                fit fitVar2 = this.z;
                ag(fitVar2);
                if (!fitVar2.aw()) {
                    zzay().f11519c.h("No network");
                    gwx bo = bo();
                    bsz bszVar = (bsz) bo.f18912a;
                    bszVar.bi();
                    bszVar.zzaz()._e();
                    if (!bo.f18914c) {
                        bszVar.m.v.registerReceiver(bo, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        fit fitVar3 = bszVar.z;
                        ag(fitVar3);
                        bo.f18915d = fitVar3.aw();
                        bszVar.zzay().f11519c.i(Boolean.valueOf(bo.f18915d), "Registering connectivity change receiver. Network connected");
                        bo.f18914c = true;
                    }
                    uk ukVar4 = this.s;
                    ag(ukVar4);
                    ukVar4.zza();
                    return;
                }
                long f4 = this.y.f9871c.f();
                bm();
                long max5 = Math.max(0L, ((Long) gad.bu.h(null)).longValue());
                ag(fitVar);
                if (!fitVar.aq(f4, max5)) {
                    j = Math.max(j, f4 + max5);
                }
                bo().g();
                ((czz) zzav()).getClass();
                long currentTimeMillis2 = j - System.currentTimeMillis();
                if (currentTimeMillis2 <= 0) {
                    bm();
                    currentTimeMillis2 = Math.max(0L, ((Long) gad.ak.h(null)).longValue());
                    fou fouVar = this.y.f9870b;
                    ((czz) zzav()).getClass();
                    fouVar.g(System.currentTimeMillis());
                }
                zzay().f11519c.i(Long.valueOf(currentTimeMillis2), "Upload scheduled in approximately ms");
                uk ukVar5 = this.s;
                ag(ukVar5);
                ukVar5.n();
                cyg cygVar = (cyg) ukVar5.z;
                cygVar.getClass();
                Context context = cygVar.v;
                bgm bgmVar = cygVar.z;
                if (!dkq.p(context)) {
                    cyg.ak(bgmVar);
                    bgmVar.o.h("Receiver not registered/enabled");
                }
                if (!dkq.o(context)) {
                    cyg.ak(bgmVar);
                    bgmVar.o.h("Service not registered/enabled");
                }
                ukVar5.zza();
                cyg.ak(bgmVar);
                bgmVar.f11519c.i(Long.valueOf(currentTimeMillis2), "Scheduling upload, millis");
                cygVar.f13743ab.getClass();
                long elapsedRealtime = SystemClock.elapsedRealtime() + currentTimeMillis2;
                if (currentTimeMillis2 < Math.max(0L, ((Long) gad.br.h(null)).longValue()) && ukVar5.h().f15807g == 0) {
                    ukVar5.h().j(currentTimeMillis2);
                }
                if (Build.VERSION.SDK_INT < 24) {
                    AlarmManager alarmManager = ukVar5.f20098c;
                    if (alarmManager != null) {
                        alarmManager.setInexactRepeating(2, elapsedRealtime, Math.max(((Long) gad.ao.h(null)).longValue(), currentTimeMillis2), ukVar5.g());
                        return;
                    }
                    return;
                }
                ComponentName componentName = new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementJobService");
                int _as = ukVar5._as();
                PersistableBundle persistableBundle = new PersistableBundle();
                persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
                JobInfo build = new JobInfo.Builder(_as, componentName).setMinimumLatency(currentTimeMillis2).setOverrideDeadline(currentTimeMillis2 + currentTimeMillis2).setExtras(persistableBundle).build();
                Method method = eoz.f15924a;
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                jobScheduler.getClass();
                Method method2 = eoz.f15924a;
                if (method2 != null) {
                    checkSelfPermission = context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS");
                    if (checkSelfPermission == 0) {
                        Method method3 = eoz.f15925b;
                        try {
                            if (method3 != null) {
                                try {
                                    num = (Integer) method3.invoke(UserHandle.class, null);
                                } catch (IllegalAccessException | InvocationTargetException e2) {
                                    if (Log.isLoggable("JobSchedulerCompat", 6)) {
                                        Log.e("JobSchedulerCompat", "myUserId invocation illegal", e2);
                                    }
                                }
                                if (num != null) {
                                    intValue = num.intValue();
                                    return;
                                }
                            }
                            return;
                        } catch (IllegalAccessException | InvocationTargetException e3) {
                            Log.e("UploadAlarm", "error calling scheduleAsPackage", e3);
                            jobScheduler.schedule(build);
                            return;
                        }
                        intValue = 0;
                    }
                }
                jobScheduler.schedule(build);
                return;
            }
        }
        z = true;
        if (z) {
        }
        long f22 = this.y.f9870b.f();
        long f32 = this.y.f9873g.f();
        ggz ggzVar32 = this.l;
        ag(ggzVar32);
        long bd2 = ggzVar32.bd("select max(bundle_end_timestamp) from queue", null, 0L);
        ggz ggzVar42 = this.l;
        ag(ggzVar42);
        max2 = Math.max(bd2, ggzVar42.bd("select max(timestamp) from raw_events", null, 0L));
        if (max2 != 0) {
        }
        if (j != j2) {
        }
    }

    public final rs as(String str) {
        String str2;
        rs rsVar = rs.f19921a;
        zzaz()._e();
        bi();
        rs rsVar2 = (rs) this.ac.get(str);
        if (rsVar2 != null) {
            return rsVar2;
        }
        ggz ggzVar = this.l;
        ag(ggzVar);
        ckd.k(str);
        ggzVar._e();
        ggzVar.n();
        Cursor cursor = null;
        try {
            try {
                cursor = ggzVar.bg().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                if (cursor.moveToFirst()) {
                    str2 = cursor.getString(0);
                    cursor.close();
                } else {
                    cursor.close();
                    str2 = "G1";
                }
                rs d2 = rs.d(str2);
                at(str, d2);
                return d2;
            } catch (SQLiteException e2) {
                bgm bgmVar = ((cyg) ggzVar.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11518b.e("select consent_state from consent_settings where app_id=? limit 1;", "Database error", e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final void at(String str, rs rsVar) {
        zzaz()._e();
        bi();
        this.ac.put(str, rsVar);
        ggz ggzVar = this.l;
        ag(ggzVar);
        cyg cygVar = (cyg) ggzVar.z;
        ckd.k(str);
        ggzVar._e();
        ggzVar.n();
        ContentValues contentValues = new ContentValues();
        contentValues.put(PluginConstants.KEY_APP_ID, str);
        contentValues.put("consent_state", rsVar.f());
        try {
            if (ggzVar.bg().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11518b.i(bgm.t(str), "Failed to insert/update consent setting (got -1). appId");
            }
        } catch (SQLiteException e2) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(bgm.t(str), "Error storing consent setting. appId, error", e2);
        }
    }

    public final void au(cyo cyoVar) {
        tl tlVar;
        tl tlVar2;
        dqu dquVar = this.u;
        zzaz()._e();
        if (TextUtils.isEmpty(cyoVar.ay()) && TextUtils.isEmpty(cyoVar.at())) {
            String bi = cyoVar.bi();
            ckd.k(bi);
            am(bi, MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE, null, null, null);
            return;
        }
        Uri.Builder builder = new Uri.Builder();
        String ay = cyoVar.ay();
        if (TextUtils.isEmpty(ay)) {
            ay = cyoVar.at();
        }
        tl tlVar3 = null;
        Uri.Builder appendQueryParameter = builder.scheme((String) gad.x.h(null)).encodedAuthority((String) gad.al.h(null)).path("config/app/".concat(String.valueOf(ay))).appendQueryParameter("platform", "android");
        ahd ahdVar = this.j;
        ((cyg) ahdVar.z).f13747e.n();
        appendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(73000L)).appendQueryParameter("runtime_version", "0");
        fui.c();
        if (!((cyg) ahdVar.z).f13747e.g(cyoVar.bi(), gad.f17781f)) {
            builder.appendQueryParameter("app_instance_id", cyoVar.al());
        }
        String uri = builder.build().toString();
        try {
            String bi2 = cyoVar.bi();
            ckd.k(bi2);
            URL url = new URL(uri);
            zzay().f11519c.i(bi2, "Fetching remote configuration");
            ag(dquVar);
            clv ap = dquVar.ap(bi2);
            ag(dquVar);
            dquVar._e();
            String str = (String) dquVar.r.get(bi2);
            if (ap != null) {
                if (TextUtils.isEmpty(str)) {
                    tlVar2 = null;
                } else {
                    tlVar2 = new tl(0);
                    tlVar2.put("If-Modified-Since", str);
                }
                fui.c();
                if (bm().g(null, gad.ah)) {
                    ag(dquVar);
                    dquVar._e();
                    String str2 = (String) dquVar.h.get(bi2);
                    if (!TextUtils.isEmpty(str2)) {
                        if (tlVar2 == null) {
                            tlVar2 = new tl(0);
                        }
                        tl tlVar4 = tlVar2;
                        tlVar4.put("If-None-Match", str2);
                        tlVar3 = tlVar4;
                    }
                }
                tlVar = tlVar2;
                this.p = true;
                fit fitVar = this.z;
                ag(fitVar);
                eap eapVar = new eap(5, this);
                fitVar._e();
                fitVar.n();
                fth fthVar = ((cyg) fitVar.z).j;
                cyg.ak(fthVar);
                fthVar.v(new gal(fitVar, bi2, url, null, tlVar, eapVar));
            }
            tlVar = tlVar3;
            this.p = true;
            fit fitVar2 = this.z;
            ag(fitVar2);
            eap eapVar2 = new eap(5, this);
            fitVar2._e();
            fitVar2.n();
            fth fthVar2 = ((cyg) fitVar2.z).j;
            cyg.ak(fthVar2);
            fthVar2.v(new gal(fitVar2, bi2, url, null, tlVar, eapVar2));
        } catch (MalformedURLException unused) {
            zzay().f11518b.e(bgm.t(cyoVar.bi()), "Failed to parse config URL. Not fetching. appId", uri);
        }
    }

    public final boolean av(btw btwVar, btw btwVar2) {
        ckd.u("_e".equals(btwVar.h()));
        fit fitVar = this.f12159e;
        ag(fitVar);
        asm p = fit.p("_sc", (kk) btwVar.o());
        String x = p == null ? null : p.x();
        ag(fitVar);
        asm p2 = fit.p("_pc", (kk) btwVar2.o());
        String x2 = p2 != null ? p2.x() : null;
        if (x2 == null || !x2.equals(x)) {
            return false;
        }
        ckd.u("_e".equals(btwVar.h()));
        ag(fitVar);
        asm p3 = fit.p("_et", (kk) btwVar.o());
        if (p3 == null || !p3.v() || p3.n() <= 0) {
            return true;
        }
        long n = p3.n();
        ag(fitVar);
        asm p4 = fit.p("_et", (kk) btwVar2.o());
        if (p4 != null && p4.n() > 0) {
            n += p4.n();
        }
        ag(fitVar);
        fit.al(btwVar2, "_et", Long.valueOf(n));
        ag(fitVar);
        fit.al(btwVar, "_fr", 1L);
        return true;
    }

    public final void aw(afh afhVar) {
        if (this.w != null) {
            ArrayList arrayList = new ArrayList();
            this.f12160f = arrayList;
            arrayList.addAll(this.w);
        }
        ggz ggzVar = this.l;
        ag(ggzVar);
        cyg cygVar = (cyg) ggzVar.z;
        String str = afhVar.zza;
        ckd.k(str);
        ckd.bf(str);
        ggzVar._e();
        ggzVar.n();
        try {
            SQLiteDatabase bg = ggzVar.bg();
            String[] strArr = {str};
            int delete = bg.delete("apps", "app_id=?", strArr) + bg.delete("events", "app_id=?", strArr) + bg.delete("user_attributes", "app_id=?", strArr) + bg.delete("conditional_properties", "app_id=?", strArr) + bg.delete("raw_events", "app_id=?", strArr) + bg.delete("raw_events_metadata", "app_id=?", strArr) + bg.delete("queue", "app_id=?", strArr) + bg.delete("audience_filter_values", "app_id=?", strArr) + bg.delete("main_event_params", "app_id=?", strArr) + bg.delete("default_event_params", "app_id=?", strArr);
            if (delete > 0) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11519c.e(str, "Reset analytics data. app, records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e2) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(bgm.t(str), "Error resetting analytics data. appId, error", e2);
        }
        if (afhVar.zzh) {
            bh(afhVar);
        }
    }

    public final void ax(ctf ctfVar, afh afhVar) {
        List az;
        cyg cygVar;
        List<bou> az2;
        List<bou> az3;
        String str;
        ckd.k(afhVar);
        ckd.bf(afhVar.zza);
        zzaz()._e();
        bi();
        String str2 = afhVar.zza;
        long j = ctfVar.zzd;
        dhh f2 = dhh.f(ctfVar);
        zzaz()._e();
        ein einVar = null;
        if (this.k != null && (str = this.i) != null && str.equals(str2)) {
            einVar = this.k;
        }
        dkq.q(einVar, (Bundle) f2.f14174b, false);
        ctf j2 = f2.j();
        ag(this.f12159e);
        if (TextUtils.isEmpty(afhVar.zzb) && TextUtils.isEmpty(afhVar.zzq)) {
            return;
        }
        if (!afhVar.zzh) {
            bp(afhVar);
            return;
        }
        List list = afhVar.zzt;
        if (list != null) {
            if (!list.contains(j2.zza)) {
                zzay().o.f("Dropping non-safelisted event. appId, event name, origin", str2, j2.zza, j2.zzc);
                return;
            } else {
                Bundle zzc = j2.zzb.zzc();
                zzc.putLong("ga_safelisted", 1L);
                j2 = new ctf(j2.zza, new cde(zzc), j2.zzc, j2.zzd);
            }
        }
        ggz ggzVar = this.l;
        ag(ggzVar);
        ggzVar.ap();
        try {
            ggz ggzVar2 = this.l;
            ag(ggzVar2);
            ckd.bf(str2);
            ggzVar2._e();
            ggzVar2.n();
            if (j < 0) {
                bgm bgmVar = ((cyg) ggzVar2.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11520g.e(bgm.t(str2), "Invalid time querying timed out conditional properties", Long.valueOf(j));
                az = Collections.EMPTY_LIST;
            } else {
                az = ggzVar2.az("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
            }
            Iterator it = az.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                cygVar = this.m;
                if (!hasNext) {
                    break;
                }
                bou bouVar = (bou) it.next();
                if (bouVar != null) {
                    zzay().f11519c.f("User property timed out", bouVar.zza, cygVar.af.i(bouVar.zzc.zzb), bouVar.zzc.zza());
                    ctf ctfVar2 = bouVar.zzg;
                    if (ctfVar2 != null) {
                        bk(new ctf(ctfVar2, j), afhVar);
                    }
                    ggz ggzVar3 = this.l;
                    ag(ggzVar3);
                    ggzVar3.bh(str2, bouVar.zzc.zzb);
                }
            }
            ggz ggzVar4 = this.l;
            ag(ggzVar4);
            ckd.bf(str2);
            ggzVar4._e();
            ggzVar4.n();
            if (j < 0) {
                bgm bgmVar2 = ((cyg) ggzVar4.z).z;
                cyg.ak(bgmVar2);
                bgmVar2.f11520g.e(bgm.t(str2), "Invalid time querying expired conditional properties", Long.valueOf(j));
                az2 = Collections.EMPTY_LIST;
            } else {
                az2 = ggzVar4.az("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j)});
            }
            ArrayList arrayList = new ArrayList(az2.size());
            for (bou bouVar2 : az2) {
                if (bouVar2 != null) {
                    zzay().f11519c.f("User property expired", bouVar2.zza, cygVar.af.i(bouVar2.zzc.zzb), bouVar2.zzc.zza());
                    ggz ggzVar5 = this.l;
                    ag(ggzVar5);
                    ggzVar5.aq(str2, bouVar2.zzc.zzb);
                    ctf ctfVar3 = bouVar2.zzk;
                    if (ctfVar3 != null) {
                        arrayList.add(ctfVar3);
                    }
                    ggz ggzVar6 = this.l;
                    ag(ggzVar6);
                    ggzVar6.bh(str2, bouVar2.zzc.zzb);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                bk(new ctf((ctf) it2.next(), j), afhVar);
            }
            ggz ggzVar7 = this.l;
            ag(ggzVar7);
            cyg cygVar2 = (cyg) ggzVar7.z;
            String str3 = j2.zza;
            ckd.bf(str2);
            ckd.bf(str3);
            ggzVar7._e();
            ggzVar7.n();
            if (j < 0) {
                bgm bgmVar3 = cygVar2.z;
                cyg.ak(bgmVar3);
                bgmVar3.f11520g.f("Invalid time querying triggered conditional properties", bgm.t(str2), cygVar2.af.f(str3), Long.valueOf(j));
                az3 = Collections.EMPTY_LIST;
            } else {
                az3 = ggzVar7.az("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j)});
            }
            ArrayList arrayList2 = new ArrayList(az3.size());
            for (bou bouVar3 : az3) {
                if (bouVar3 != null) {
                    cmd cmdVar = bouVar3.zzc;
                    String str4 = bouVar3.zza;
                    ckd.k(str4);
                    String str5 = bouVar3.zzb;
                    String str6 = cmdVar.zzb;
                    Object zza = cmdVar.zza();
                    ckd.k(zza);
                    ffu ffuVar = new ffu(str4, str5, str6, j, zza);
                    Object obj = ffuVar.f16725b;
                    String str7 = ffuVar.f16728e;
                    ggz ggzVar8 = this.l;
                    ag(ggzVar8);
                    if (ggzVar8.bc(ffuVar)) {
                        zzay().f11519c.f("User property triggered", bouVar3.zza, cygVar.af.i(str7), obj);
                    } else {
                        zzay().f11518b.f("Too many active user properties, ignoring", bgm.t(bouVar3.zza), cygVar.af.i(str7), obj);
                    }
                    ctf ctfVar4 = bouVar3.zzi;
                    if (ctfVar4 != null) {
                        arrayList2.add(ctfVar4);
                    }
                    bouVar3.zzc = new cmd(ffuVar);
                    bouVar3.zze = true;
                    ggz ggzVar9 = this.l;
                    ag(ggzVar9);
                    ggzVar9.t(bouVar3);
                }
            }
            bk(j2, afhVar);
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                bk(new ctf((ctf) it3.next(), j), afhVar);
            }
            ggz ggzVar10 = this.l;
            ag(ggzVar10);
            ggzVar10.av();
            ggz ggzVar11 = this.l;
            ag(ggzVar11);
            ggzVar11.an();
        } catch (Throwable th) {
            ggz ggzVar12 = this.l;
            ag(ggzVar12);
            ggzVar12.an();
            throw th;
        }
    }

    public final void ay() {
        zzaz()._e();
        bi();
        if (this.aa) {
            return;
        }
        this.aa = true;
        zzaz()._e();
        FileLock fileLock = this.f12161g;
        cyg cygVar = this.m;
        if (fileLock == null || !fileLock.isValid()) {
            ((cyg) this.l.z).getClass();
            try {
                FileChannel channel = new RandomAccessFile(new File(cygVar.v.getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
                this.f12155ab = channel;
                FileLock tryLock = channel.tryLock();
                this.f12161g = tryLock;
                if (tryLock == null) {
                    zzay().f11518b.h("Storage concurrent data access panic");
                    return;
                }
                zzay().f11519c.h("Storage concurrent access okay");
            } catch (FileNotFoundException e2) {
                zzay().f11518b.i(e2, "Failed to acquire storage lock");
                return;
            } catch (IOException e3) {
                zzay().f11518b.i(e3, "Failed to access storage lock file");
                return;
            } catch (OverlappingFileLockException e4) {
                zzay().f11520g.i(e4, "Storage lock already acquired");
                return;
            }
        } else {
            zzay().f11519c.h("Storage concurrent access okay");
        }
        FileChannel fileChannel = this.f12155ab;
        zzaz()._e();
        int i = 0;
        if (fileChannel == null || !fileChannel.isOpen()) {
            zzay().f11518b.h("Bad channel to read from");
        } else {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            try {
                fileChannel.position(0L);
                int read = fileChannel.read(allocate);
                if (read == 4) {
                    allocate.flip();
                    i = allocate.getInt();
                } else if (read != -1) {
                    zzay().f11520g.i(Integer.valueOf(read), "Unexpected data length. Bytes read");
                }
            } catch (IOException e5) {
                zzay().f11518b.i(e5, "Failed to read from channel");
            }
        }
        fqh at = cygVar.at();
        at.zza();
        int i2 = at.u;
        zzaz()._e();
        if (i > i2) {
            zzay().f11518b.e(Integer.valueOf(i), "Panic: can't downgrade version. Previous, current version", Integer.valueOf(i2));
            return;
        }
        if (i < i2) {
            FileChannel fileChannel2 = this.f12155ab;
            zzaz()._e();
            if (fileChannel2 == null || !fileChannel2.isOpen()) {
                zzay().f11518b.h("Bad channel to read from");
            } else {
                ByteBuffer allocate2 = ByteBuffer.allocate(4);
                allocate2.putInt(i2);
                allocate2.flip();
                try {
                    fileChannel2.truncate(0L);
                    fileChannel2.write(allocate2);
                    fileChannel2.force(true);
                    if (fileChannel2.size() != 4) {
                        zzay().f11518b.i(Long.valueOf(fileChannel2.size()), "Error writing to channel. Bytes written");
                    }
                    zzay().f11519c.e(Integer.valueOf(i), "Storage version upgraded. Previous, current version", Integer.valueOf(i2));
                    return;
                } catch (IOException e6) {
                    zzay().f11518b.i(e6, "Failed to write to channel");
                }
            }
            zzay().f11518b.e(Integer.valueOf(i), "Storage version upgrade failed. Previous, current version", Integer.valueOf(i2));
        }
    }

    public final afh az(String str) {
        ggz ggzVar = this.l;
        ag(ggzVar);
        cyo ay = ggzVar.ay(str);
        if (ay != null) {
            cyg cygVar = ay.k;
            if (!TextUtils.isEmpty(ay.ai())) {
                Boolean bc = bc(ay);
                if (bc != null && !bc.booleanValue()) {
                    zzay().f11518b.i(bgm.t(str), "App version does not match; dropping. appId");
                    return null;
                }
                String ay2 = ay.ay();
                String ai = ay.ai();
                long ao = ay.ao();
                fth fthVar = cygVar.j;
                cyg.ak(fthVar);
                fthVar._e();
                String str2 = ay.i;
                fth fthVar2 = cygVar.j;
                cyg.ak(fthVar2);
                fthVar2._e();
                long j = ay.t;
                fth fthVar3 = cygVar.j;
                cyg.ak(fthVar3);
                fthVar3._e();
                long j2 = ay.f13773f;
                fth fthVar4 = cygVar.j;
                cyg.ak(fthVar4);
                fthVar4._e();
                boolean z = ay.f13771d;
                String bk = ay.bk();
                fth fthVar5 = cygVar.j;
                cyg.ak(fthVar5);
                fthVar5._e();
                boolean bg = ay.bg();
                String at = ay.at();
                fth fthVar6 = cygVar.j;
                cyg.ak(fthVar6);
                fthVar6._e();
                Boolean bool = ay.ae;
                long au = ay.au();
                fth fthVar7 = cygVar.j;
                cyg.ak(fthVar7);
                fthVar7._e();
                return new afh(str, ay2, ai, ao, str2, j, j2, (String) null, z, false, bk, 0L, 0L, 0, bg, false, at, bool, au, (List) ay.z, (String) null, as(str).f(), "", (String) null);
            }
        }
        zzay().o.i(str, "No app data available; dropping");
        return null;
    }

    public final String ba(rs rsVar) {
        if (!rsVar.g(gxx.ANALYTICS_STORAGE)) {
            return null;
        }
        byte[] bArr = new byte[16];
        ap().av().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final fit bb() {
        fit fitVar = this.f12159e;
        ag(fitVar);
        return fitVar;
    }

    public final Boolean bc(cyo cyoVar) {
        try {
            long ao = cyoVar.ao();
            cyg cygVar = this.m;
            if (ao != -2147483648L) {
                if (cyoVar.ao() == chk.c(cygVar.v).c(0, cyoVar.bi()).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = chk.c(cygVar.v).c(0, cyoVar.bi()).versionName;
                String ai = cyoVar.ai();
                if (ai != null && ai.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final void bd() {
        zzaz()._e();
        if (this.p || this.f12158d || this.o) {
            zzay().f11519c.f("Not stopping services. fetch, network, upload", Boolean.valueOf(this.p), Boolean.valueOf(this.f12158d), Boolean.valueOf(this.o));
            return;
        }
        zzay().f11519c.h("Stopping uploading service(s)");
        ArrayList arrayList = this.f12157c;
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        ArrayList arrayList2 = this.f12157c;
        ckd.k(arrayList2);
        arrayList2.clear();
    }

    public final void be(ctf ctfVar, String str) {
        ggz ggzVar = this.l;
        ag(ggzVar);
        cyo ay = ggzVar.ay(str);
        if (ay != null) {
            cyg cygVar = ay.k;
            if (!TextUtils.isEmpty(ay.ai())) {
                Boolean bc = bc(ay);
                if (bc == null) {
                    if (!"_ui".equals(ctfVar.zza)) {
                        zzay().f11520g.i(bgm.t(str), "Could not find package. appId");
                    }
                } else if (!bc.booleanValue()) {
                    zzay().f11518b.i(bgm.t(str), "App version does not match; dropping event. appId");
                    return;
                }
                String ay2 = ay.ay();
                String ai = ay.ai();
                long ao = ay.ao();
                fth fthVar = cygVar.j;
                cyg.ak(fthVar);
                fthVar._e();
                String str2 = ay.i;
                fth fthVar2 = cygVar.j;
                cyg.ak(fthVar2);
                fthVar2._e();
                long j = ay.t;
                fth fthVar3 = cygVar.j;
                cyg.ak(fthVar3);
                fthVar3._e();
                long j2 = ay.f13773f;
                fth fthVar4 = cygVar.j;
                cyg.ak(fthVar4);
                fthVar4._e();
                boolean z = ay.f13771d;
                String bk = ay.bk();
                fth fthVar5 = cygVar.j;
                cyg.ak(fthVar5);
                fthVar5._e();
                boolean bg = ay.bg();
                String at = ay.at();
                fth fthVar6 = cygVar.j;
                cyg.ak(fthVar6);
                fthVar6._e();
                Boolean bool = ay.ae;
                long au = ay.au();
                fth fthVar7 = cygVar.j;
                cyg.ak(fthVar7);
                fthVar7._e();
                br(ctfVar, new afh(str, ay2, ai, ao, str2, j, j2, (String) null, z, false, bk, 0L, 0L, 0, bg, false, at, bool, au, (List) ay.z, (String) null, as(str).f(), "", (String) null));
                return;
            }
        }
        zzay().o.i(str, "No app data available; dropping event");
    }

    /* JADX WARN: Code restructure failed: missing block: B:285:0x05d9, code lost:
    
        if (r3 == null) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0139, code lost:
    
        if (r12 == null) goto L59;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:214:0x02d1 A[Catch: all -> 0x0034, TRY_ENTER, TryCatch #10 {all -> 0x0034, blocks: (B:3:0x0014, B:5:0x0021, B:10:0x0038, B:12:0x003e, B:14:0x004e, B:16:0x0056, B:18:0x005c, B:20:0x0067, B:22:0x0077, B:24:0x0080, B:26:0x0093, B:28:0x00bf, B:30:0x00c5, B:32:0x00c8, B:34:0x00d4, B:35:0x00e9, B:37:0x00fa, B:39:0x0100, B:45:0x0115, B:46:0x013c, B:56:0x0141, B:57:0x0144, B:62:0x0145, B:65:0x016d, B:68:0x0175, B:75:0x01a7, B:77:0x02d4, B:79:0x02da, B:81:0x02e6, B:82:0x02ea, B:84:0x02f0, B:87:0x0304, B:90:0x030d, B:92:0x0313, B:96:0x0338, B:97:0x0328, B:100:0x0332, B:106:0x033b, B:108:0x0356, B:111:0x0365, B:115:0x038c, B:117:0x03bf, B:119:0x03c3, B:120:0x03cc, B:122:0x03d7, B:124:0x03df, B:126:0x03e3, B:127:0x03e9, B:128:0x03f0, B:130:0x03f5, B:132:0x03f9, B:133:0x03ff, B:134:0x0406, B:136:0x0414, B:138:0x042f, B:144:0x043d, B:146:0x044e, B:147:0x045d, B:149:0x047d, B:151:0x048e, B:153:0x04d6, B:155:0x04e8, B:156:0x04ff, B:158:0x050a, B:159:0x0512, B:162:0x0543, B:165:0x054c, B:167:0x04f8, B:169:0x04c3, B:170:0x04cd, B:205:0x02a2, B:219:0x0562, B:220:0x0565, B:214:0x02d1, B:266:0x0566, B:273:0x05ad, B:275:0x05dc, B:277:0x05e2, B:279:0x05ed, B:282:0x05bb, B:292:0x05f8, B:293:0x05fb), top: B:2:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0562 A[Catch: all -> 0x0034, TryCatch #10 {all -> 0x0034, blocks: (B:3:0x0014, B:5:0x0021, B:10:0x0038, B:12:0x003e, B:14:0x004e, B:16:0x0056, B:18:0x005c, B:20:0x0067, B:22:0x0077, B:24:0x0080, B:26:0x0093, B:28:0x00bf, B:30:0x00c5, B:32:0x00c8, B:34:0x00d4, B:35:0x00e9, B:37:0x00fa, B:39:0x0100, B:45:0x0115, B:46:0x013c, B:56:0x0141, B:57:0x0144, B:62:0x0145, B:65:0x016d, B:68:0x0175, B:75:0x01a7, B:77:0x02d4, B:79:0x02da, B:81:0x02e6, B:82:0x02ea, B:84:0x02f0, B:87:0x0304, B:90:0x030d, B:92:0x0313, B:96:0x0338, B:97:0x0328, B:100:0x0332, B:106:0x033b, B:108:0x0356, B:111:0x0365, B:115:0x038c, B:117:0x03bf, B:119:0x03c3, B:120:0x03cc, B:122:0x03d7, B:124:0x03df, B:126:0x03e3, B:127:0x03e9, B:128:0x03f0, B:130:0x03f5, B:132:0x03f9, B:133:0x03ff, B:134:0x0406, B:136:0x0414, B:138:0x042f, B:144:0x043d, B:146:0x044e, B:147:0x045d, B:149:0x047d, B:151:0x048e, B:153:0x04d6, B:155:0x04e8, B:156:0x04ff, B:158:0x050a, B:159:0x0512, B:162:0x0543, B:165:0x054c, B:167:0x04f8, B:169:0x04c3, B:170:0x04cd, B:205:0x02a2, B:219:0x0562, B:220:0x0565, B:214:0x02d1, B:266:0x0566, B:273:0x05ad, B:275:0x05dc, B:277:0x05e2, B:279:0x05ed, B:282:0x05bb, B:292:0x05f8, B:293:0x05fb), top: B:2:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x05e2 A[Catch: all -> 0x0034, TryCatch #10 {all -> 0x0034, blocks: (B:3:0x0014, B:5:0x0021, B:10:0x0038, B:12:0x003e, B:14:0x004e, B:16:0x0056, B:18:0x005c, B:20:0x0067, B:22:0x0077, B:24:0x0080, B:26:0x0093, B:28:0x00bf, B:30:0x00c5, B:32:0x00c8, B:34:0x00d4, B:35:0x00e9, B:37:0x00fa, B:39:0x0100, B:45:0x0115, B:46:0x013c, B:56:0x0141, B:57:0x0144, B:62:0x0145, B:65:0x016d, B:68:0x0175, B:75:0x01a7, B:77:0x02d4, B:79:0x02da, B:81:0x02e6, B:82:0x02ea, B:84:0x02f0, B:87:0x0304, B:90:0x030d, B:92:0x0313, B:96:0x0338, B:97:0x0328, B:100:0x0332, B:106:0x033b, B:108:0x0356, B:111:0x0365, B:115:0x038c, B:117:0x03bf, B:119:0x03c3, B:120:0x03cc, B:122:0x03d7, B:124:0x03df, B:126:0x03e3, B:127:0x03e9, B:128:0x03f0, B:130:0x03f5, B:132:0x03f9, B:133:0x03ff, B:134:0x0406, B:136:0x0414, B:138:0x042f, B:144:0x043d, B:146:0x044e, B:147:0x045d, B:149:0x047d, B:151:0x048e, B:153:0x04d6, B:155:0x04e8, B:156:0x04ff, B:158:0x050a, B:159:0x0512, B:162:0x0543, B:165:0x054c, B:167:0x04f8, B:169:0x04c3, B:170:0x04cd, B:205:0x02a2, B:219:0x0562, B:220:0x0565, B:214:0x02d1, B:266:0x0566, B:273:0x05ad, B:275:0x05dc, B:277:0x05e2, B:279:0x05ed, B:282:0x05bb, B:292:0x05f8, B:293:0x05fb), top: B:2:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0141 A[Catch: all -> 0x0034, TryCatch #10 {all -> 0x0034, blocks: (B:3:0x0014, B:5:0x0021, B:10:0x0038, B:12:0x003e, B:14:0x004e, B:16:0x0056, B:18:0x005c, B:20:0x0067, B:22:0x0077, B:24:0x0080, B:26:0x0093, B:28:0x00bf, B:30:0x00c5, B:32:0x00c8, B:34:0x00d4, B:35:0x00e9, B:37:0x00fa, B:39:0x0100, B:45:0x0115, B:46:0x013c, B:56:0x0141, B:57:0x0144, B:62:0x0145, B:65:0x016d, B:68:0x0175, B:75:0x01a7, B:77:0x02d4, B:79:0x02da, B:81:0x02e6, B:82:0x02ea, B:84:0x02f0, B:87:0x0304, B:90:0x030d, B:92:0x0313, B:96:0x0338, B:97:0x0328, B:100:0x0332, B:106:0x033b, B:108:0x0356, B:111:0x0365, B:115:0x038c, B:117:0x03bf, B:119:0x03c3, B:120:0x03cc, B:122:0x03d7, B:124:0x03df, B:126:0x03e3, B:127:0x03e9, B:128:0x03f0, B:130:0x03f5, B:132:0x03f9, B:133:0x03ff, B:134:0x0406, B:136:0x0414, B:138:0x042f, B:144:0x043d, B:146:0x044e, B:147:0x045d, B:149:0x047d, B:151:0x048e, B:153:0x04d6, B:155:0x04e8, B:156:0x04ff, B:158:0x050a, B:159:0x0512, B:162:0x0543, B:165:0x054c, B:167:0x04f8, B:169:0x04c3, B:170:0x04cd, B:205:0x02a2, B:219:0x0562, B:220:0x0565, B:214:0x02d1, B:266:0x0566, B:273:0x05ad, B:275:0x05dc, B:277:0x05e2, B:279:0x05ed, B:282:0x05bb, B:292:0x05f8, B:293:0x05fb), top: B:2:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02da A[Catch: all -> 0x0034, TryCatch #10 {all -> 0x0034, blocks: (B:3:0x0014, B:5:0x0021, B:10:0x0038, B:12:0x003e, B:14:0x004e, B:16:0x0056, B:18:0x005c, B:20:0x0067, B:22:0x0077, B:24:0x0080, B:26:0x0093, B:28:0x00bf, B:30:0x00c5, B:32:0x00c8, B:34:0x00d4, B:35:0x00e9, B:37:0x00fa, B:39:0x0100, B:45:0x0115, B:46:0x013c, B:56:0x0141, B:57:0x0144, B:62:0x0145, B:65:0x016d, B:68:0x0175, B:75:0x01a7, B:77:0x02d4, B:79:0x02da, B:81:0x02e6, B:82:0x02ea, B:84:0x02f0, B:87:0x0304, B:90:0x030d, B:92:0x0313, B:96:0x0338, B:97:0x0328, B:100:0x0332, B:106:0x033b, B:108:0x0356, B:111:0x0365, B:115:0x038c, B:117:0x03bf, B:119:0x03c3, B:120:0x03cc, B:122:0x03d7, B:124:0x03df, B:126:0x03e3, B:127:0x03e9, B:128:0x03f0, B:130:0x03f5, B:132:0x03f9, B:133:0x03ff, B:134:0x0406, B:136:0x0414, B:138:0x042f, B:144:0x043d, B:146:0x044e, B:147:0x045d, B:149:0x047d, B:151:0x048e, B:153:0x04d6, B:155:0x04e8, B:156:0x04ff, B:158:0x050a, B:159:0x0512, B:162:0x0543, B:165:0x054c, B:167:0x04f8, B:169:0x04c3, B:170:0x04cd, B:205:0x02a2, B:219:0x0562, B:220:0x0565, B:214:0x02d1, B:266:0x0566, B:273:0x05ad, B:275:0x05dc, B:277:0x05e2, B:279:0x05ed, B:282:0x05bb, B:292:0x05f8, B:293:0x05fb), top: B:2:0x0014 }] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void bf() {
        ?? r10;
        ggz ggzVar;
        long longValue;
        Cursor cursor;
        String str;
        Cursor cursor2;
        Cursor cursor3;
        List list;
        fit fitVar;
        String str2;
        String str3;
        String str4;
        int i;
        boolean z;
        boolean z2;
        String str5;
        Cursor cursor4;
        byte[] blob;
        fit fitVar2;
        Cursor cursor5;
        fit fitVar3 = this.z;
        cyg cygVar = this.m;
        zzaz()._e();
        bi();
        int i2 = 1;
        this.o = true;
        int i3 = 0;
        try {
            cygVar.getClass();
            Boolean u = cygVar.ao().u();
            if (u == null) {
                zzay().x().h("Upload data called on the client side before use of service was decided");
                this.o = false;
            } else if (u.booleanValue()) {
                zzay().v().h("Upload called in the client side when service should be used");
                this.o = false;
            } else if (this.h > 0) {
                ar();
                this.o = false;
            } else {
                zzaz()._e();
                if (this.w != null) {
                    zzay().w().h("Uploading requested multiple times");
                    this.o = false;
                } else {
                    ag(fitVar3);
                    if (fitVar3.aw()) {
                        ((czz) zzav()).getClass();
                        long currentTimeMillis = System.currentTimeMillis();
                        Cursor cursor6 = null;
                        int k = bm().k(null, gad.m);
                        bm();
                        long longValue2 = currentTimeMillis - ((Long) gad.t.h(null)).longValue();
                        for (int i4 = 0; i4 < k && al(longValue2); i4++) {
                        }
                        long f2 = this.y.f9870b.f();
                        if (f2 != 0) {
                            zzay().o.i(Long.valueOf(Math.abs(currentTimeMillis - f2)), "Uploading events. Elapsed time since last upload attempt (ms)");
                        }
                        ggz ggzVar2 = this.l;
                        ag(ggzVar2);
                        String ba = ggzVar2.ba();
                        long j = -1;
                        if (TextUtils.isEmpty(ba)) {
                            try {
                                this.v = -1L;
                                ggzVar = this.l;
                                ag(ggzVar);
                                bm();
                                longValue = currentTimeMillis - ((Long) gad.t.h(null)).longValue();
                                ggzVar._e();
                                ggzVar.n();
                            } catch (Throwable th) {
                                th = th;
                                r10 = fitVar3;
                            }
                            try {
                                cursor = ggzVar.bg().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf(longValue)});
                                try {
                                } catch (SQLiteException e2) {
                                    e = e2;
                                    ((cyg) ggzVar.z).zzay().v().i(e, "Error selecting expired configs");
                                }
                            } catch (SQLiteException e3) {
                                e = e3;
                                cursor = null;
                            } catch (Throwable th2) {
                                th = th2;
                                r10 = 0;
                                if (r10 != 0) {
                                    r10.close();
                                }
                                throw th;
                            }
                            if (cursor.moveToFirst()) {
                                str = cursor.getString(0);
                                cursor.close();
                                if (!TextUtils.isEmpty(str)) {
                                }
                            } else {
                                ((cyg) ggzVar.z).zzay().w().h("No expired configs for apps with pending events");
                                cursor.close();
                                str = null;
                                if (!TextUtils.isEmpty(str)) {
                                    ggz ggzVar3 = this.l;
                                    ag(ggzVar3);
                                    cyo ay = ggzVar3.ay(str);
                                    if (ay != null) {
                                        au(ay);
                                    }
                                }
                            }
                        } else {
                            if (this.v == -1) {
                                ggz ggzVar4 = this.l;
                                ag(ggzVar4);
                                try {
                                    cursor5 = ggzVar4.bg().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                                    try {
                                        try {
                                            if (cursor5.moveToFirst()) {
                                                j = cursor5.getLong(0);
                                            }
                                        } catch (SQLiteException e4) {
                                            e = e4;
                                            ((cyg) ggzVar4.z).zzay().v().i(e, "Error querying raw events");
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        cursor6 = cursor5;
                                        if (cursor6 != null) {
                                            cursor6.close();
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteException e5) {
                                    e = e5;
                                    cursor5 = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    if (cursor6 != null) {
                                    }
                                    throw th;
                                }
                                cursor5.close();
                                this.v = j;
                            }
                            int k2 = bm().k(ba, gad.bs);
                            int max = Math.max(0, bm().k(ba, gad.f17779d));
                            ggz ggzVar5 = this.l;
                            ag(ggzVar5);
                            ggzVar5._e();
                            ggzVar5.n();
                            ckd.u(k2 > 0);
                            ckd.u(max > 0);
                            ckd.bf(ba);
                            try {
                                Cursor query = ggzVar5.bg().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{ba}, null, null, "rowid", String.valueOf(k2));
                                try {
                                    try {
                                        if (query.moveToFirst()) {
                                            ArrayList arrayList = new ArrayList();
                                            int i5 = 0;
                                            while (true) {
                                                long j2 = query.getLong(i3);
                                                try {
                                                    blob = query.getBlob(i2);
                                                } catch (IOException e6) {
                                                    e = e6;
                                                    cursor4 = query;
                                                }
                                                try {
                                                    try {
                                                        fitVar2 = ggzVar5.f10133a.f12159e;
                                                        ag(fitVar2);
                                                    } catch (IOException e7) {
                                                        e = e7;
                                                        cursor4 = query;
                                                    }
                                                    try {
                                                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(blob);
                                                        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                                                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                                        byte[] bArr = new byte[1024];
                                                        while (true) {
                                                            int read = gZIPInputStream.read(bArr);
                                                            if (read <= 0) {
                                                                break;
                                                            }
                                                            cursor4 = query;
                                                            try {
                                                                try {
                                                                    byteArrayOutputStream.write(bArr, 0, read);
                                                                    query = cursor4;
                                                                } catch (IOException e8) {
                                                                    e = e8;
                                                                    try {
                                                                        ((cyg) fitVar2.z).zzay().v().i(e, "Failed to ungzip content");
                                                                        throw e;
                                                                    } catch (IOException e9) {
                                                                        e = e9;
                                                                        ((cyg) ggzVar5.z).zzay().v().e(bgm.t(ba), "Failed to unzip queued bundle. appId", e);
                                                                        if (cursor4.moveToNext()) {
                                                                            break;
                                                                        }
                                                                        query = cursor4;
                                                                        i2 = 1;
                                                                        i3 = 0;
                                                                        cursor4.close();
                                                                        list = arrayList;
                                                                        if (!list.isEmpty()) {
                                                                        }
                                                                        this.o = false;
                                                                        bd();
                                                                    }
                                                                }
                                                            } catch (SQLiteException e10) {
                                                                e = e10;
                                                                cursor3 = cursor4;
                                                                try {
                                                                    ((cyg) ggzVar5.z).zzay().v().e(bgm.t(ba), "Error querying bundles. appId", e);
                                                                    list = Collections.EMPTY_LIST;
                                                                    if (cursor3 != null) {
                                                                    }
                                                                    if (!list.isEmpty()) {
                                                                    }
                                                                    this.o = false;
                                                                    bd();
                                                                } catch (Throwable th5) {
                                                                    th = th5;
                                                                    cursor2 = cursor3;
                                                                    if (cursor2 != null) {
                                                                        cursor2.close();
                                                                    }
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th6) {
                                                                th = th6;
                                                                cursor2 = cursor4;
                                                                if (cursor2 != null) {
                                                                }
                                                                throw th;
                                                            }
                                                        }
                                                        gZIPInputStream.close();
                                                        byteArrayInputStream.close();
                                                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                                                        if (!arrayList.isEmpty() && byteArray.length + i5 > max) {
                                                            cursor4 = query;
                                                            break;
                                                        }
                                                        try {
                                                            epg epgVar = (epg) fit.j(fzb.bh(), byteArray);
                                                            if (!query.isNull(2)) {
                                                                epgVar.ai(query.getInt(2));
                                                            }
                                                            i5 += byteArray.length;
                                                            arrayList.add(Pair.create((fzb) epgVar.o(), Long.valueOf(j2)));
                                                        } catch (IOException e11) {
                                                            ((cyg) ggzVar5.z).zzay().v().e(bgm.t(ba), "Failed to merge queued bundle. appId", e11);
                                                        }
                                                        cursor4 = query;
                                                        if (cursor4.moveToNext() || i5 > max) {
                                                            break;
                                                            break;
                                                        } else {
                                                            query = cursor4;
                                                            i2 = 1;
                                                            i3 = 0;
                                                        }
                                                    } catch (IOException e12) {
                                                        e = e12;
                                                        cursor4 = query;
                                                    }
                                                } catch (SQLiteException e13) {
                                                    e = e13;
                                                    cursor4 = query;
                                                    cursor3 = cursor4;
                                                    ((cyg) ggzVar5.z).zzay().v().e(bgm.t(ba), "Error querying bundles. appId", e);
                                                    list = Collections.EMPTY_LIST;
                                                    if (cursor3 != null) {
                                                        cursor3.close();
                                                    }
                                                    if (!list.isEmpty()) {
                                                    }
                                                    this.o = false;
                                                    bd();
                                                }
                                            }
                                            cursor4.close();
                                            list = arrayList;
                                        } else {
                                            list = Collections.EMPTY_LIST;
                                            query.close();
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        cursor4 = query;
                                    }
                                } catch (SQLiteException e14) {
                                    e = e14;
                                    cursor4 = query;
                                }
                            } catch (SQLiteException e15) {
                                e = e15;
                                cursor3 = null;
                            } catch (Throwable th8) {
                                th = th8;
                                cursor2 = null;
                            }
                            if (!list.isEmpty()) {
                                if (as(ba).g(gxx.AD_STORAGE)) {
                                    Iterator it = list.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            str5 = null;
                                            break;
                                        }
                                        fzb fzbVar = (fzb) ((Pair) it.next()).first;
                                        if (!fzbVar.ck().isEmpty()) {
                                            str5 = fzbVar.ck();
                                            break;
                                        }
                                    }
                                    if (str5 != null) {
                                        int i6 = 0;
                                        while (true) {
                                            if (i6 >= list.size()) {
                                                break;
                                            }
                                            fzb fzbVar2 = (fzb) ((Pair) list.get(i6)).first;
                                            if (!fzbVar2.ck().isEmpty() && !fzbVar2.ck().equals(str5)) {
                                                list = list.subList(0, i6);
                                                break;
                                            }
                                            i6++;
                                        }
                                    }
                                }
                                grt c2 = flt.c();
                                int size = list.size();
                                ArrayList arrayList2 = new ArrayList(list.size());
                                boolean z3 = bm().q(ba) && as(ba).g(gxx.AD_STORAGE);
                                boolean g2 = as(ba).g(gxx.AD_STORAGE);
                                boolean g3 = as(ba).g(gxx.ANALYTICS_STORAGE);
                                eur.c();
                                boolean g4 = bm().g(null, gad.o);
                                int i7 = 0;
                                while (true) {
                                    fitVar = this.f12159e;
                                    if (i7 >= size) {
                                        break;
                                    }
                                    epg epgVar2 = (epg) ((fzb) ((Pair) list.get(i7)).first).ah();
                                    List list2 = list;
                                    arrayList2.add((Long) ((Pair) list.get(i7)).second);
                                    bm().n();
                                    epgVar2.av();
                                    epgVar2.h(currentTimeMillis);
                                    epgVar2.ae();
                                    if (z3) {
                                        i = size;
                                    } else {
                                        if (epgVar2.i) {
                                            epgVar2.p();
                                            i = size;
                                            epgVar2.i = false;
                                        } else {
                                            i = size;
                                        }
                                        fzb.ax((fzb) epgVar2.k);
                                    }
                                    if (!g2) {
                                        epgVar2.d();
                                        epgVar2.am();
                                    }
                                    if (!g3) {
                                        if (epgVar2.i) {
                                            epgVar2.p();
                                            epgVar2.i = false;
                                        }
                                        fzb.au((fzb) epgVar2.k);
                                    }
                                    bn(ba, epgVar2);
                                    if (!g4) {
                                        if (epgVar2.i) {
                                            epgVar2.p();
                                            epgVar2.i = false;
                                        }
                                        fzb.e((fzb) epgVar2.k);
                                    }
                                    int i8 = i;
                                    if (bm().g(ba, gad.ay)) {
                                        byte[] z4 = ((fzb) epgVar2.o()).z();
                                        ag(fitVar);
                                        z = z3;
                                        z2 = g2;
                                        epgVar2.aj(fitVar.av(z4));
                                    } else {
                                        z = z3;
                                        z2 = g2;
                                    }
                                    c2.b(epgVar2);
                                    i7++;
                                    z3 = z;
                                    size = i8;
                                    list = list2;
                                    g2 = z2;
                                }
                                int i9 = size;
                                if (Log.isLoggable(zzay().al(), 2)) {
                                    ag(fitVar);
                                    str2 = fitVar.au((flt) c2.o());
                                } else {
                                    str2 = null;
                                }
                                ag(fitVar);
                                byte[] z5 = ((flt) c2.o()).z();
                                ahd ahdVar = this.j;
                                fui.c();
                                if (((cyg) ahdVar.z).f13747e.g(ba, gad.am)) {
                                    dqu dquVar = ahdVar.f10133a.u;
                                    ag(dquVar);
                                    String w = dquVar.w(ba);
                                    if (TextUtils.isEmpty(w)) {
                                        str3 = (String) gad.bb.h(null);
                                    } else {
                                        Uri parse = Uri.parse((String) gad.bb.h(null));
                                        Uri.Builder buildUpon = parse.buildUpon();
                                        buildUpon.authority(w + "." + parse.getAuthority());
                                        str3 = buildUpon.build().toString();
                                    }
                                } else {
                                    str3 = (String) gad.bb.h(null);
                                }
                                try {
                                    URL url = new URL(str3);
                                    ckd.u(!arrayList2.isEmpty());
                                    if (this.w != null) {
                                        zzay().v().h("Set uploading progress before finishing the previous upload");
                                    } else {
                                        this.w = new ArrayList(arrayList2);
                                    }
                                    this.y.f9873g.g(currentTimeMillis);
                                    zzay().w().f("Uploading data. app, uncompressed size, data", i9 > 0 ? c2.a().ch() : "?", Integer.valueOf(z5.length), str2);
                                    this.f12158d = true;
                                    ag(fitVar3);
                                    bgb bgbVar = new bgb(this, ba);
                                    fitVar3._e();
                                    fitVar3.n();
                                    str4 = ba;
                                    try {
                                        ((cyg) fitVar3.z).zzaz().v(new gal(fitVar3, str4, url, z5, null, bgbVar));
                                    } catch (MalformedURLException unused) {
                                        zzay().v().e(bgm.t(str4), "Failed to parse upload URL. Not uploading. appId", str3);
                                        this.o = false;
                                        bd();
                                    }
                                } catch (MalformedURLException unused2) {
                                    str4 = ba;
                                }
                            }
                        }
                        this.o = false;
                    } else {
                        zzay().w().h("Network not connected, ignoring upload request");
                        ar();
                        this.o = false;
                    }
                }
            }
            bd();
        } catch (Throwable th9) {
            this.o = false;
            bd();
            throw th9;
        }
    }

    public final void bg(bou bouVar, afh afhVar) {
        ctf ctfVar;
        ckd.bf(bouVar.zza);
        ckd.k(bouVar.zzb);
        ckd.k(bouVar.zzc);
        ckd.bf(bouVar.zzc.zzb);
        zzaz()._e();
        bi();
        if (ah(afhVar)) {
            if (!afhVar.zzh) {
                bp(afhVar);
                return;
            }
            bou bouVar2 = new bou(bouVar);
            boolean z = false;
            bouVar2.zze = false;
            ggz ggzVar = this.l;
            ag(ggzVar);
            ggzVar.ap();
            try {
                ggz ggzVar2 = this.l;
                ag(ggzVar2);
                String str = bouVar2.zza;
                ckd.k(str);
                bou au = ggzVar2.au(str, bouVar2.zzc.zzb);
                cyg cygVar = this.m;
                if (au != null && !au.zzb.equals(bouVar2.zzb)) {
                    zzay().f11520g.f("Updating a conditional user property with different origin. name, origin, origin (from DB)", cygVar.af.i(bouVar2.zzc.zzb), bouVar2.zzb, au.zzb);
                }
                if (au != null && au.zze) {
                    bouVar2.zzb = au.zzb;
                    bouVar2.zzd = au.zzd;
                    bouVar2.zzh = au.zzh;
                    bouVar2.zzf = au.zzf;
                    bouVar2.zzi = au.zzi;
                    bouVar2.zze = true;
                    cmd cmdVar = bouVar2.zzc;
                    bouVar2.zzc = new cmd(cmdVar.zzb, au.zzc.zzc, cmdVar.zza(), au.zzc.zzf);
                } else if (TextUtils.isEmpty(bouVar2.zzf)) {
                    cmd cmdVar2 = bouVar2.zzc;
                    bouVar2.zzc = new cmd(cmdVar2.zzb, bouVar2.zzd, cmdVar2.zza(), bouVar2.zzc.zzf);
                    bouVar2.zze = true;
                    z = true;
                }
                if (bouVar2.zze) {
                    cmd cmdVar3 = bouVar2.zzc;
                    String str2 = bouVar2.zza;
                    ckd.k(str2);
                    String str3 = bouVar2.zzb;
                    String str4 = cmdVar3.zzb;
                    long j = cmdVar3.zzc;
                    Object zza = cmdVar3.zza();
                    ckd.k(zza);
                    ffu ffuVar = new ffu(str2, str3, str4, j, zza);
                    Object obj = ffuVar.f16725b;
                    String str5 = ffuVar.f16728e;
                    ggz ggzVar3 = this.l;
                    ag(ggzVar3);
                    if (ggzVar3.bc(ffuVar)) {
                        zzay().o.f("User property updated immediately", bouVar2.zza, cygVar.af.i(str5), obj);
                    } else {
                        zzay().f11518b.f("(2)Too many active user properties, ignoring", bgm.t(bouVar2.zza), cygVar.af.i(str5), obj);
                    }
                    if (z && (ctfVar = bouVar2.zzi) != null) {
                        bk(new ctf(ctfVar, bouVar2.zzd), afhVar);
                    }
                }
                ggz ggzVar4 = this.l;
                ag(ggzVar4);
                if (ggzVar4.t(bouVar2)) {
                    zzay().o.f("Conditional property added", bouVar2.zza, cygVar.af.i(bouVar2.zzc.zzb), bouVar2.zzc.zza());
                } else {
                    zzay().f11518b.f("Too many conditional properties, ignoring", bgm.t(bouVar2.zza), cygVar.af.i(bouVar2.zzc.zzb), bouVar2.zzc.zza());
                }
                ggz ggzVar5 = this.l;
                ag(ggzVar5);
                ggzVar5.av();
                ggz ggzVar6 = this.l;
                ag(ggzVar6);
                ggzVar6.an();
            } catch (Throwable th) {
                ggz ggzVar7 = this.l;
                ag(ggzVar7);
                ggzVar7.an();
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x0557 A[Catch: all -> 0x00d5, TryCatch #5 {all -> 0x00d5, blocks: (B:24:0x00b4, B:26:0x00c5, B:30:0x0122, B:32:0x0132, B:34:0x0149, B:36:0x0172, B:39:0x0182, B:42:0x01d7, B:44:0x01dd, B:46:0x01ec, B:50:0x0228, B:52:0x0233, B:55:0x0240, B:58:0x024e, B:61:0x0259, B:63:0x025c, B:64:0x027e, B:66:0x0283, B:68:0x02a2, B:71:0x02b5, B:73:0x02db, B:75:0x02e4, B:77:0x02f4, B:79:0x03ea, B:81:0x0418, B:82:0x041b, B:84:0x0438, B:88:0x04fa, B:89:0x04fd, B:90:0x0573, B:95:0x044b, B:98:0x046a, B:100:0x0472, B:102:0x047a, B:106:0x048d, B:108:0x04a4, B:111:0x04b0, B:115:0x049a, B:118:0x04be, B:120:0x04db, B:122:0x04e3, B:123:0x04eb, B:125:0x04f1, B:129:0x04c9, B:132:0x0458, B:133:0x0305, B:135:0x0331, B:136:0x0340, B:138:0x0347, B:140:0x034d, B:142:0x0357, B:144:0x035d, B:146:0x0363, B:148:0x0369, B:150:0x036e, B:153:0x038b, B:157:0x03a1, B:161:0x03a9, B:165:0x03bc, B:166:0x03cc, B:168:0x03dc, B:169:0x0511, B:171:0x0540, B:172:0x0543, B:173:0x0557, B:175:0x055b, B:176:0x0292, B:183:0x0207, B:193:0x00d8, B:195:0x00dc, B:198:0x00ee, B:200:0x0100, B:202:0x010a, B:206:0x0114), top: B:23:0x00b4, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0292 A[Catch: all -> 0x00d5, TryCatch #5 {all -> 0x00d5, blocks: (B:24:0x00b4, B:26:0x00c5, B:30:0x0122, B:32:0x0132, B:34:0x0149, B:36:0x0172, B:39:0x0182, B:42:0x01d7, B:44:0x01dd, B:46:0x01ec, B:50:0x0228, B:52:0x0233, B:55:0x0240, B:58:0x024e, B:61:0x0259, B:63:0x025c, B:64:0x027e, B:66:0x0283, B:68:0x02a2, B:71:0x02b5, B:73:0x02db, B:75:0x02e4, B:77:0x02f4, B:79:0x03ea, B:81:0x0418, B:82:0x041b, B:84:0x0438, B:88:0x04fa, B:89:0x04fd, B:90:0x0573, B:95:0x044b, B:98:0x046a, B:100:0x0472, B:102:0x047a, B:106:0x048d, B:108:0x04a4, B:111:0x04b0, B:115:0x049a, B:118:0x04be, B:120:0x04db, B:122:0x04e3, B:123:0x04eb, B:125:0x04f1, B:129:0x04c9, B:132:0x0458, B:133:0x0305, B:135:0x0331, B:136:0x0340, B:138:0x0347, B:140:0x034d, B:142:0x0357, B:144:0x035d, B:146:0x0363, B:148:0x0369, B:150:0x036e, B:153:0x038b, B:157:0x03a1, B:161:0x03a9, B:165:0x03bc, B:166:0x03cc, B:168:0x03dc, B:169:0x0511, B:171:0x0540, B:172:0x0543, B:173:0x0557, B:175:0x055b, B:176:0x0292, B:183:0x0207, B:193:0x00d8, B:195:0x00dc, B:198:0x00ee, B:200:0x0100, B:202:0x010a, B:206:0x0114), top: B:23:0x00b4, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0132 A[Catch: all -> 0x00d5, TryCatch #5 {all -> 0x00d5, blocks: (B:24:0x00b4, B:26:0x00c5, B:30:0x0122, B:32:0x0132, B:34:0x0149, B:36:0x0172, B:39:0x0182, B:42:0x01d7, B:44:0x01dd, B:46:0x01ec, B:50:0x0228, B:52:0x0233, B:55:0x0240, B:58:0x024e, B:61:0x0259, B:63:0x025c, B:64:0x027e, B:66:0x0283, B:68:0x02a2, B:71:0x02b5, B:73:0x02db, B:75:0x02e4, B:77:0x02f4, B:79:0x03ea, B:81:0x0418, B:82:0x041b, B:84:0x0438, B:88:0x04fa, B:89:0x04fd, B:90:0x0573, B:95:0x044b, B:98:0x046a, B:100:0x0472, B:102:0x047a, B:106:0x048d, B:108:0x04a4, B:111:0x04b0, B:115:0x049a, B:118:0x04be, B:120:0x04db, B:122:0x04e3, B:123:0x04eb, B:125:0x04f1, B:129:0x04c9, B:132:0x0458, B:133:0x0305, B:135:0x0331, B:136:0x0340, B:138:0x0347, B:140:0x034d, B:142:0x0357, B:144:0x035d, B:146:0x0363, B:148:0x0369, B:150:0x036e, B:153:0x038b, B:157:0x03a1, B:161:0x03a9, B:165:0x03bc, B:166:0x03cc, B:168:0x03dc, B:169:0x0511, B:171:0x0540, B:172:0x0543, B:173:0x0557, B:175:0x055b, B:176:0x0292, B:183:0x0207, B:193:0x00d8, B:195:0x00dc, B:198:0x00ee, B:200:0x0100, B:202:0x010a, B:206:0x0114), top: B:23:0x00b4, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0228 A[Catch: all -> 0x00d5, TryCatch #5 {all -> 0x00d5, blocks: (B:24:0x00b4, B:26:0x00c5, B:30:0x0122, B:32:0x0132, B:34:0x0149, B:36:0x0172, B:39:0x0182, B:42:0x01d7, B:44:0x01dd, B:46:0x01ec, B:50:0x0228, B:52:0x0233, B:55:0x0240, B:58:0x024e, B:61:0x0259, B:63:0x025c, B:64:0x027e, B:66:0x0283, B:68:0x02a2, B:71:0x02b5, B:73:0x02db, B:75:0x02e4, B:77:0x02f4, B:79:0x03ea, B:81:0x0418, B:82:0x041b, B:84:0x0438, B:88:0x04fa, B:89:0x04fd, B:90:0x0573, B:95:0x044b, B:98:0x046a, B:100:0x0472, B:102:0x047a, B:106:0x048d, B:108:0x04a4, B:111:0x04b0, B:115:0x049a, B:118:0x04be, B:120:0x04db, B:122:0x04e3, B:123:0x04eb, B:125:0x04f1, B:129:0x04c9, B:132:0x0458, B:133:0x0305, B:135:0x0331, B:136:0x0340, B:138:0x0347, B:140:0x034d, B:142:0x0357, B:144:0x035d, B:146:0x0363, B:148:0x0369, B:150:0x036e, B:153:0x038b, B:157:0x03a1, B:161:0x03a9, B:165:0x03bc, B:166:0x03cc, B:168:0x03dc, B:169:0x0511, B:171:0x0540, B:172:0x0543, B:173:0x0557, B:175:0x055b, B:176:0x0292, B:183:0x0207, B:193:0x00d8, B:195:0x00dc, B:198:0x00ee, B:200:0x0100, B:202:0x010a, B:206:0x0114), top: B:23:0x00b4, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0283 A[Catch: all -> 0x00d5, TryCatch #5 {all -> 0x00d5, blocks: (B:24:0x00b4, B:26:0x00c5, B:30:0x0122, B:32:0x0132, B:34:0x0149, B:36:0x0172, B:39:0x0182, B:42:0x01d7, B:44:0x01dd, B:46:0x01ec, B:50:0x0228, B:52:0x0233, B:55:0x0240, B:58:0x024e, B:61:0x0259, B:63:0x025c, B:64:0x027e, B:66:0x0283, B:68:0x02a2, B:71:0x02b5, B:73:0x02db, B:75:0x02e4, B:77:0x02f4, B:79:0x03ea, B:81:0x0418, B:82:0x041b, B:84:0x0438, B:88:0x04fa, B:89:0x04fd, B:90:0x0573, B:95:0x044b, B:98:0x046a, B:100:0x0472, B:102:0x047a, B:106:0x048d, B:108:0x04a4, B:111:0x04b0, B:115:0x049a, B:118:0x04be, B:120:0x04db, B:122:0x04e3, B:123:0x04eb, B:125:0x04f1, B:129:0x04c9, B:132:0x0458, B:133:0x0305, B:135:0x0331, B:136:0x0340, B:138:0x0347, B:140:0x034d, B:142:0x0357, B:144:0x035d, B:146:0x0363, B:148:0x0369, B:150:0x036e, B:153:0x038b, B:157:0x03a1, B:161:0x03a9, B:165:0x03bc, B:166:0x03cc, B:168:0x03dc, B:169:0x0511, B:171:0x0540, B:172:0x0543, B:173:0x0557, B:175:0x055b, B:176:0x0292, B:183:0x0207, B:193:0x00d8, B:195:0x00dc, B:198:0x00ee, B:200:0x0100, B:202:0x010a, B:206:0x0114), top: B:23:0x00b4, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02a2 A[Catch: all -> 0x00d5, TRY_LEAVE, TryCatch #5 {all -> 0x00d5, blocks: (B:24:0x00b4, B:26:0x00c5, B:30:0x0122, B:32:0x0132, B:34:0x0149, B:36:0x0172, B:39:0x0182, B:42:0x01d7, B:44:0x01dd, B:46:0x01ec, B:50:0x0228, B:52:0x0233, B:55:0x0240, B:58:0x024e, B:61:0x0259, B:63:0x025c, B:64:0x027e, B:66:0x0283, B:68:0x02a2, B:71:0x02b5, B:73:0x02db, B:75:0x02e4, B:77:0x02f4, B:79:0x03ea, B:81:0x0418, B:82:0x041b, B:84:0x0438, B:88:0x04fa, B:89:0x04fd, B:90:0x0573, B:95:0x044b, B:98:0x046a, B:100:0x0472, B:102:0x047a, B:106:0x048d, B:108:0x04a4, B:111:0x04b0, B:115:0x049a, B:118:0x04be, B:120:0x04db, B:122:0x04e3, B:123:0x04eb, B:125:0x04f1, B:129:0x04c9, B:132:0x0458, B:133:0x0305, B:135:0x0331, B:136:0x0340, B:138:0x0347, B:140:0x034d, B:142:0x0357, B:144:0x035d, B:146:0x0363, B:148:0x0369, B:150:0x036e, B:153:0x038b, B:157:0x03a1, B:161:0x03a9, B:165:0x03bc, B:166:0x03cc, B:168:0x03dc, B:169:0x0511, B:171:0x0540, B:172:0x0543, B:173:0x0557, B:175:0x055b, B:176:0x0292, B:183:0x0207, B:193:0x00d8, B:195:0x00dc, B:198:0x00ee, B:200:0x0100, B:202:0x010a, B:206:0x0114), top: B:23:0x00b4, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0418 A[Catch: all -> 0x00d5, TryCatch #5 {all -> 0x00d5, blocks: (B:24:0x00b4, B:26:0x00c5, B:30:0x0122, B:32:0x0132, B:34:0x0149, B:36:0x0172, B:39:0x0182, B:42:0x01d7, B:44:0x01dd, B:46:0x01ec, B:50:0x0228, B:52:0x0233, B:55:0x0240, B:58:0x024e, B:61:0x0259, B:63:0x025c, B:64:0x027e, B:66:0x0283, B:68:0x02a2, B:71:0x02b5, B:73:0x02db, B:75:0x02e4, B:77:0x02f4, B:79:0x03ea, B:81:0x0418, B:82:0x041b, B:84:0x0438, B:88:0x04fa, B:89:0x04fd, B:90:0x0573, B:95:0x044b, B:98:0x046a, B:100:0x0472, B:102:0x047a, B:106:0x048d, B:108:0x04a4, B:111:0x04b0, B:115:0x049a, B:118:0x04be, B:120:0x04db, B:122:0x04e3, B:123:0x04eb, B:125:0x04f1, B:129:0x04c9, B:132:0x0458, B:133:0x0305, B:135:0x0331, B:136:0x0340, B:138:0x0347, B:140:0x034d, B:142:0x0357, B:144:0x035d, B:146:0x0363, B:148:0x0369, B:150:0x036e, B:153:0x038b, B:157:0x03a1, B:161:0x03a9, B:165:0x03bc, B:166:0x03cc, B:168:0x03dc, B:169:0x0511, B:171:0x0540, B:172:0x0543, B:173:0x0557, B:175:0x055b, B:176:0x0292, B:183:0x0207, B:193:0x00d8, B:195:0x00dc, B:198:0x00ee, B:200:0x0100, B:202:0x010a, B:206:0x0114), top: B:23:0x00b4, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0438 A[Catch: all -> 0x00d5, TRY_LEAVE, TryCatch #5 {all -> 0x00d5, blocks: (B:24:0x00b4, B:26:0x00c5, B:30:0x0122, B:32:0x0132, B:34:0x0149, B:36:0x0172, B:39:0x0182, B:42:0x01d7, B:44:0x01dd, B:46:0x01ec, B:50:0x0228, B:52:0x0233, B:55:0x0240, B:58:0x024e, B:61:0x0259, B:63:0x025c, B:64:0x027e, B:66:0x0283, B:68:0x02a2, B:71:0x02b5, B:73:0x02db, B:75:0x02e4, B:77:0x02f4, B:79:0x03ea, B:81:0x0418, B:82:0x041b, B:84:0x0438, B:88:0x04fa, B:89:0x04fd, B:90:0x0573, B:95:0x044b, B:98:0x046a, B:100:0x0472, B:102:0x047a, B:106:0x048d, B:108:0x04a4, B:111:0x04b0, B:115:0x049a, B:118:0x04be, B:120:0x04db, B:122:0x04e3, B:123:0x04eb, B:125:0x04f1, B:129:0x04c9, B:132:0x0458, B:133:0x0305, B:135:0x0331, B:136:0x0340, B:138:0x0347, B:140:0x034d, B:142:0x0357, B:144:0x035d, B:146:0x0363, B:148:0x0369, B:150:0x036e, B:153:0x038b, B:157:0x03a1, B:161:0x03a9, B:165:0x03bc, B:166:0x03cc, B:168:0x03dc, B:169:0x0511, B:171:0x0540, B:172:0x0543, B:173:0x0557, B:175:0x055b, B:176:0x0292, B:183:0x0207, B:193:0x00d8, B:195:0x00dc, B:198:0x00ee, B:200:0x0100, B:202:0x010a, B:206:0x0114), top: B:23:0x00b4, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x04fa A[Catch: all -> 0x00d5, TryCatch #5 {all -> 0x00d5, blocks: (B:24:0x00b4, B:26:0x00c5, B:30:0x0122, B:32:0x0132, B:34:0x0149, B:36:0x0172, B:39:0x0182, B:42:0x01d7, B:44:0x01dd, B:46:0x01ec, B:50:0x0228, B:52:0x0233, B:55:0x0240, B:58:0x024e, B:61:0x0259, B:63:0x025c, B:64:0x027e, B:66:0x0283, B:68:0x02a2, B:71:0x02b5, B:73:0x02db, B:75:0x02e4, B:77:0x02f4, B:79:0x03ea, B:81:0x0418, B:82:0x041b, B:84:0x0438, B:88:0x04fa, B:89:0x04fd, B:90:0x0573, B:95:0x044b, B:98:0x046a, B:100:0x0472, B:102:0x047a, B:106:0x048d, B:108:0x04a4, B:111:0x04b0, B:115:0x049a, B:118:0x04be, B:120:0x04db, B:122:0x04e3, B:123:0x04eb, B:125:0x04f1, B:129:0x04c9, B:132:0x0458, B:133:0x0305, B:135:0x0331, B:136:0x0340, B:138:0x0347, B:140:0x034d, B:142:0x0357, B:144:0x035d, B:146:0x0363, B:148:0x0369, B:150:0x036e, B:153:0x038b, B:157:0x03a1, B:161:0x03a9, B:165:0x03bc, B:166:0x03cc, B:168:0x03dc, B:169:0x0511, B:171:0x0540, B:172:0x0543, B:173:0x0557, B:175:0x055b, B:176:0x0292, B:183:0x0207, B:193:0x00d8, B:195:0x00dc, B:198:0x00ee, B:200:0x0100, B:202:0x010a, B:206:0x0114), top: B:23:0x00b4, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x044b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void bh(afh afhVar) {
        int i;
        long j;
        cyo ay;
        long j2;
        Context context;
        long j3;
        cyo cyoVar;
        long j4;
        bwz as;
        boolean z;
        long am;
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        long j5;
        long j6;
        boolean z2;
        SQLiteDatabase bg;
        String[] strArr;
        zzaz()._e();
        bi();
        ckd.k(afhVar);
        ckd.bf(afhVar.zza);
        if (ah(afhVar)) {
            ggz ggzVar = this.l;
            ag(ggzVar);
            cyo ay2 = ggzVar.ay(afhVar.zza);
            if (ay2 != null && TextUtils.isEmpty(ay2.ay()) && !TextUtils.isEmpty(afhVar.zzb)) {
                ay2.bn(0L);
                ggz ggzVar2 = this.l;
                ag(ggzVar2);
                ggzVar2.ax(ay2);
                dqu dquVar = this.u;
                ag(dquVar);
                String str = afhVar.zza;
                dquVar._e();
                dquVar.q.remove(str);
            }
            if (!afhVar.zzh) {
                bp(afhVar);
                return;
            }
            long j7 = afhVar.zzm;
            if (j7 == 0) {
                ((czz) zzav()).getClass();
                j7 = System.currentTimeMillis();
            }
            long j8 = j7;
            cyg cygVar = this.m;
            auk ar = cygVar.ar();
            Context context2 = cygVar.v;
            ar._e();
            ar.f10873b = null;
            ar.f10872a = 0L;
            int i2 = afhVar.zzn;
            if (i2 != 0 && i2 != 1) {
                zzay().f11520g.e(bgm.t(afhVar.zza), "Incorrect app type, assuming installed app. appId, appType", Integer.valueOf(i2));
                i2 = 0;
            }
            ggz ggzVar3 = this.l;
            ag(ggzVar3);
            ggzVar3.ap();
            try {
                ggz ggzVar4 = this.l;
                ag(ggzVar4);
                ffu al = ggzVar4.al(afhVar.zza, "_npa");
                if (al != null && !LiveConfigKey.AUTO.equals(al.f16727d)) {
                    i = i2;
                    j = 1;
                    ggz ggzVar5 = this.l;
                    ag(ggzVar5);
                    String str2 = afhVar.zza;
                    ckd.k(str2);
                    ay = ggzVar5.ay(str2);
                    if (ay == null) {
                        ap();
                        j2 = j;
                        if (dkq.m(afhVar.zzb, ay.ay(), afhVar.zzq, ay.at())) {
                            zzay().f11520g.i(bgm.t(ay.bi()), "New GMP App Id passed in. Removing cached database data. appId");
                            ggz ggzVar6 = this.l;
                            ag(ggzVar6);
                            cyg cygVar2 = (cyg) ggzVar6.z;
                            String bi = ay.bi();
                            ggzVar6.n();
                            ggzVar6._e();
                            ckd.bf(bi);
                            try {
                                bg = ggzVar6.bg();
                                strArr = new String[]{bi};
                                context = context2;
                            } catch (SQLiteException e2) {
                                e = e2;
                                context = context2;
                            }
                            try {
                                int delete = bg.delete("events", "app_id=?", strArr) + bg.delete("user_attributes", "app_id=?", strArr) + bg.delete("conditional_properties", "app_id=?", strArr) + bg.delete("apps", "app_id=?", strArr) + bg.delete("raw_events", "app_id=?", strArr) + bg.delete("raw_events_metadata", "app_id=?", strArr) + bg.delete("event_filters", "app_id=?", strArr) + bg.delete("property_filters", "app_id=?", strArr) + bg.delete("audience_filter_values", "app_id=?", strArr) + bg.delete("consent_settings", "app_id=?", strArr);
                                ((diz) fsl.f17336a.f17337b.zza()).getClass();
                                j3 = j8;
                                try {
                                    int delete2 = cygVar2.f13747e.g(null, gad.bv) ? delete + bg.delete("default_event_params", "app_id=?", strArr) : delete;
                                    if (delete2 > 0) {
                                        bgm bgmVar = cygVar2.z;
                                        cyg.ak(bgmVar);
                                        bgmVar.f11519c.e(bi, "Deleted application data. app, records", Integer.valueOf(delete2));
                                    }
                                } catch (SQLiteException e3) {
                                    e = e3;
                                    bgm bgmVar2 = ((cyg) ggzVar6.z).z;
                                    cyg.ak(bgmVar2);
                                    bgmVar2.f11518b.e(bgm.t(bi), "Error deleting application data. appId, error", e);
                                    cyoVar = null;
                                    if (cyoVar != null) {
                                    }
                                    j4 = j3;
                                    bp(afhVar);
                                    if (i != 0) {
                                    }
                                    if (as != null) {
                                    }
                                    ggz ggzVar7 = this.l;
                                    ag(ggzVar7);
                                    ggzVar7.av();
                                    ggz ggzVar8 = this.l;
                                    ag(ggzVar8);
                                    ggzVar8.an();
                                }
                            } catch (SQLiteException e4) {
                                e = e4;
                                j3 = j8;
                                bgm bgmVar22 = ((cyg) ggzVar6.z).z;
                                cyg.ak(bgmVar22);
                                bgmVar22.f11518b.e(bgm.t(bi), "Error deleting application data. appId, error", e);
                                cyoVar = null;
                                if (cyoVar != null) {
                                }
                                j4 = j3;
                                bp(afhVar);
                                if (i != 0) {
                                }
                                if (as != null) {
                                }
                                ggz ggzVar72 = this.l;
                                ag(ggzVar72);
                                ggzVar72.av();
                                ggz ggzVar82 = this.l;
                                ag(ggzVar82);
                                ggzVar82.an();
                            }
                            cyoVar = null;
                            if (cyoVar != null) {
                                boolean z3 = (cyoVar.ao() == -2147483648L || cyoVar.ao() == afhVar.zzj) ? false : true;
                                String ai = cyoVar.ai();
                                if (((cyoVar.ao() != -2147483648L || ai == null || ai.equals(afhVar.zzc)) ? false : true) | z3) {
                                    Bundle bundle = new Bundle();
                                    bundle.putString("_pv", ai);
                                    long j9 = j3;
                                    j4 = j9;
                                    ax(new ctf("_au", new cde(bundle), LiveConfigKey.AUTO, j9), afhVar);
                                    bp(afhVar);
                                    if (i != 0) {
                                        ggz ggzVar9 = this.l;
                                        ag(ggzVar9);
                                        as = ggzVar9.as(afhVar.zza, "_f");
                                        z = false;
                                    } else {
                                        ggz ggzVar10 = this.l;
                                        ag(ggzVar10);
                                        as = ggzVar10.as(afhVar.zza, "_v");
                                        z = true;
                                    }
                                    if (as != null) {
                                        long j10 = ((j4 / 3600000) + j2) * 3600000;
                                        if (z) {
                                            aq(new cmd("_fvt", j4, Long.valueOf(j10), LiveConfigKey.AUTO), afhVar);
                                            zzaz()._e();
                                            bi();
                                            Bundle bundle2 = new Bundle();
                                            bundle2.putLong("_c", 1L);
                                            bundle2.putLong("_r", 1L);
                                            bundle2.putLong("_et", 1L);
                                            if (afhVar.zzp) {
                                                bundle2.putLong("_dac", 1L);
                                            }
                                            br(new ctf("_v", new cde(bundle2), LiveConfigKey.AUTO, j4), afhVar);
                                        } else {
                                            aq(new cmd("_fot", j4, Long.valueOf(j10), LiveConfigKey.AUTO), afhVar);
                                            zzaz()._e();
                                            yh yhVar = this.n;
                                            ckd.k(yhVar);
                                            String str3 = afhVar.zza;
                                            if (str3 == null || str3.isEmpty()) {
                                                bgm bgmVar3 = yhVar.f20338a.z;
                                                cyg.ak(bgmVar3);
                                                bgmVar3.j.h("Install Referrer Reporter was called with invalid app package name");
                                            } else {
                                                fth fthVar = yhVar.f20338a.j;
                                                cyg.ak(fthVar);
                                                fthVar._e();
                                                if (yhVar.b()) {
                                                    emi emiVar = new emi(yhVar, str3);
                                                    fth fthVar2 = yhVar.f20338a.j;
                                                    cyg.ak(fthVar2);
                                                    fthVar2._e();
                                                    Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
                                                    intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
                                                    PackageManager packageManager = yhVar.f20338a.v.getPackageManager();
                                                    if (packageManager == null) {
                                                        bgm bgmVar4 = yhVar.f20338a.z;
                                                        cyg.ak(bgmVar4);
                                                        bgmVar4.j.h("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
                                                    } else {
                                                        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                                                        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                                                            bgm bgmVar5 = yhVar.f20338a.z;
                                                            cyg.ak(bgmVar5);
                                                            bgmVar5.p.h("Play Service for fetching Install Referrer is unavailable on device");
                                                        } else {
                                                            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                                                            if (serviceInfo != null) {
                                                                String str4 = serviceInfo.packageName;
                                                                if (serviceInfo.name != null && "com.android.vending".equals(str4) && yhVar.b()) {
                                                                    Intent intent2 = new Intent(intent);
                                                                    try {
                                                                        aoy m = aoy.m();
                                                                        Context context3 = yhVar.f20338a.v;
                                                                        boolean u = m.u(context3, context3.getClass().getName(), intent2, emiVar, 1, null);
                                                                        try {
                                                                            bgm bgmVar6 = yhVar.f20338a.z;
                                                                            cyg.ak(bgmVar6);
                                                                            bgmVar6.f11519c.i(true != u ? "not available" : "available", "Install Referrer Service is");
                                                                        } catch (RuntimeException e5) {
                                                                            e = e5;
                                                                            bgm bgmVar7 = yhVar.f20338a.z;
                                                                            cyg.ak(bgmVar7);
                                                                            bgmVar7.f11518b.i(e.getMessage(), "Exception occurred while binding to Install Referrer Service");
                                                                            zzaz()._e();
                                                                            bi();
                                                                            Bundle bundle3 = new Bundle();
                                                                            long j11 = j2;
                                                                            bundle3.putLong("_c", j11);
                                                                            bundle3.putLong("_r", j11);
                                                                            bundle3.putLong("_uwa", 0L);
                                                                            bundle3.putLong("_pfo", 0L);
                                                                            bundle3.putLong("_sys", 0L);
                                                                            bundle3.putLong("_sysu", 0L);
                                                                            bundle3.putLong("_et", 1L);
                                                                            if (afhVar.zzp) {
                                                                            }
                                                                            String str5 = afhVar.zza;
                                                                            ckd.k(str5);
                                                                            ggz ggzVar11 = this.l;
                                                                            ag(ggzVar11);
                                                                            ckd.bf(str5);
                                                                            ggzVar11._e();
                                                                            ggzVar11.n();
                                                                            am = ggzVar11.am(str5);
                                                                            if (context.getPackageManager() != null) {
                                                                            }
                                                                            if (am >= 0) {
                                                                            }
                                                                            br(new ctf("_f", new cde(bundle3), LiveConfigKey.AUTO, j4), afhVar);
                                                                            ggz ggzVar722 = this.l;
                                                                            ag(ggzVar722);
                                                                            ggzVar722.av();
                                                                            ggz ggzVar822 = this.l;
                                                                            ag(ggzVar822);
                                                                            ggzVar822.an();
                                                                        }
                                                                    } catch (RuntimeException e6) {
                                                                        e = e6;
                                                                    }
                                                                } else {
                                                                    bgm bgmVar8 = yhVar.f20338a.z;
                                                                    cyg.ak(bgmVar8);
                                                                    bgmVar8.f11520g.h("Play Store version 8.3.73 or higher required for Install Referrer");
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    bgm bgmVar9 = yhVar.f20338a.z;
                                                    cyg.ak(bgmVar9);
                                                    bgmVar9.p.h("Install Referrer Reporter is not available");
                                                }
                                            }
                                            zzaz()._e();
                                            bi();
                                            Bundle bundle32 = new Bundle();
                                            long j112 = j2;
                                            bundle32.putLong("_c", j112);
                                            bundle32.putLong("_r", j112);
                                            bundle32.putLong("_uwa", 0L);
                                            bundle32.putLong("_pfo", 0L);
                                            bundle32.putLong("_sys", 0L);
                                            bundle32.putLong("_sysu", 0L);
                                            bundle32.putLong("_et", 1L);
                                            if (afhVar.zzp) {
                                                bundle32.putLong("_dac", 1L);
                                            }
                                            String str52 = afhVar.zza;
                                            ckd.k(str52);
                                            ggz ggzVar112 = this.l;
                                            ag(ggzVar112);
                                            ckd.bf(str52);
                                            ggzVar112._e();
                                            ggzVar112.n();
                                            am = ggzVar112.am(str52);
                                            if (context.getPackageManager() != null) {
                                                zzay().f11518b.i(bgm.t(str52), "PackageManager is null, first open report might be inaccurate. appId");
                                            } else {
                                                try {
                                                    packageInfo = chk.c(context).c(0, str52);
                                                } catch (PackageManager.NameNotFoundException e7) {
                                                    zzay().f11518b.e(bgm.t(str52), "Package info is null, first open report might be inaccurate. appId", e7);
                                                    packageInfo = null;
                                                }
                                                if (packageInfo != null) {
                                                    long j12 = packageInfo.firstInstallTime;
                                                    if (j12 != 0) {
                                                        if (j12 != packageInfo.lastUpdateTime) {
                                                            if (!bm().g(null, gad.ac)) {
                                                                bundle32.putLong("_uwa", 1L);
                                                            } else if (am == 0) {
                                                                bundle32.putLong("_uwa", 1L);
                                                                j6 = 0;
                                                                z2 = false;
                                                            }
                                                            j6 = am;
                                                            z2 = false;
                                                        } else {
                                                            j6 = am;
                                                            z2 = true;
                                                        }
                                                        aq(new cmd("_fi", j4, Long.valueOf(true != z2 ? 0L : 1L), LiveConfigKey.AUTO), afhVar);
                                                        am = j6;
                                                    }
                                                }
                                                try {
                                                    applicationInfo = chk.c(context).b(0, str52);
                                                } catch (PackageManager.NameNotFoundException e8) {
                                                    zzay().f11518b.e(bgm.t(str52), "Application info is null, first open report might be inaccurate. appId", e8);
                                                    applicationInfo = null;
                                                }
                                                if (applicationInfo != null) {
                                                    if ((applicationInfo.flags & 1) != 0) {
                                                        j5 = 1;
                                                        bundle32.putLong("_sys", 1L);
                                                    } else {
                                                        j5 = 1;
                                                    }
                                                    if ((applicationInfo.flags & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
                                                        bundle32.putLong("_sysu", j5);
                                                    }
                                                }
                                            }
                                            if (am >= 0) {
                                                bundle32.putLong("_pfo", am);
                                            }
                                            br(new ctf("_f", new cde(bundle32), LiveConfigKey.AUTO, j4), afhVar);
                                        }
                                    } else if (afhVar.zzi) {
                                        br(new ctf("_cd", new cde(new Bundle()), LiveConfigKey.AUTO, j4), afhVar);
                                    }
                                    ggz ggzVar7222 = this.l;
                                    ag(ggzVar7222);
                                    ggzVar7222.av();
                                    ggz ggzVar8222 = this.l;
                                    ag(ggzVar8222);
                                    ggzVar8222.an();
                                }
                            }
                            j4 = j3;
                            bp(afhVar);
                            if (i != 0) {
                            }
                            if (as != null) {
                            }
                            ggz ggzVar72222 = this.l;
                            ag(ggzVar72222);
                            ggzVar72222.av();
                            ggz ggzVar82222 = this.l;
                            ag(ggzVar82222);
                            ggzVar82222.an();
                        }
                    } else {
                        j2 = j;
                    }
                    context = context2;
                    j3 = j8;
                    cyoVar = ay;
                    if (cyoVar != null) {
                    }
                    j4 = j3;
                    bp(afhVar);
                    if (i != 0) {
                    }
                    if (as != null) {
                    }
                    ggz ggzVar722222 = this.l;
                    ag(ggzVar722222);
                    ggzVar722222.av();
                    ggz ggzVar822222 = this.l;
                    ag(ggzVar822222);
                    ggzVar822222.an();
                }
                Boolean bool = afhVar.zzr;
                if (bool != null) {
                    Long valueOf = Long.valueOf(true != bool.booleanValue() ? 0L : 1L);
                    i = i2;
                    j = 1;
                    cmd cmdVar = new cmd("_npa", j8, valueOf, LiveConfigKey.AUTO);
                    if (al == null || !al.f16725b.equals(cmdVar.zzd)) {
                        aq(cmdVar, afhVar);
                    }
                } else {
                    i = i2;
                    j = 1;
                    if (al != null) {
                        an(new cmd("_npa", j8, null, LiveConfigKey.AUTO), afhVar);
                    }
                }
                ggz ggzVar52 = this.l;
                ag(ggzVar52);
                String str22 = afhVar.zza;
                ckd.k(str22);
                ay = ggzVar52.ay(str22);
                if (ay == null) {
                }
                context = context2;
                j3 = j8;
                cyoVar = ay;
                if (cyoVar != null) {
                }
                j4 = j3;
                bp(afhVar);
                if (i != 0) {
                }
                if (as != null) {
                }
                ggz ggzVar7222222 = this.l;
                ag(ggzVar7222222);
                ggzVar7222222.av();
                ggz ggzVar8222222 = this.l;
                ag(ggzVar8222222);
                ggzVar8222222.an();
            } catch (Throwable th) {
                ggz ggzVar12 = this.l;
                ag(ggzVar12);
                ggzVar12.an();
                throw th;
            }
        }
    }

    public final void bi() {
        if (!this.ae) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    public final void bj(bou bouVar, afh afhVar) {
        ckd.bf(bouVar.zza);
        ckd.k(bouVar.zzc);
        ckd.bf(bouVar.zzc.zzb);
        zzaz()._e();
        bi();
        if (ah(afhVar)) {
            if (!afhVar.zzh) {
                bp(afhVar);
                return;
            }
            ggz ggzVar = this.l;
            ag(ggzVar);
            ggzVar.ap();
            try {
                bp(afhVar);
                String str = bouVar.zza;
                ckd.k(str);
                ggz ggzVar2 = this.l;
                ag(ggzVar2);
                bou au = ggzVar2.au(str, bouVar.zzc.zzb);
                cyg cygVar = this.m;
                if (au != null) {
                    zzay().o.e(bouVar.zza, "Removing conditional user property", cygVar.af.i(bouVar.zzc.zzb));
                    ggz ggzVar3 = this.l;
                    ag(ggzVar3);
                    ggzVar3.bh(str, bouVar.zzc.zzb);
                    if (au.zze) {
                        ggz ggzVar4 = this.l;
                        ag(ggzVar4);
                        ggzVar4.aq(str, bouVar.zzc.zzb);
                    }
                    ctf ctfVar = bouVar.zzk;
                    if (ctfVar != null) {
                        cde cdeVar = ctfVar.zzb;
                        Bundle zzc = cdeVar != null ? cdeVar.zzc() : null;
                        dkq ap = ap();
                        ctf ctfVar2 = bouVar.zzk;
                        ckd.k(ctfVar2);
                        ctf cb = ap.cb(ctfVar2.zza, zzc, au.zzb, bouVar.zzk.zzd, true);
                        ckd.k(cb);
                        bk(cb, afhVar);
                    }
                } else {
                    zzay().f11520g.e(bgm.t(bouVar.zza), "Conditional user property doesn't exist", cygVar.af.i(bouVar.zzc.zzb));
                }
                ggz ggzVar5 = this.l;
                ag(ggzVar5);
                ggzVar5.av();
                ggz ggzVar6 = this.l;
                ag(ggzVar6);
                ggzVar6.an();
            } catch (Throwable th) {
                ggz ggzVar7 = this.l;
                ag(ggzVar7);
                ggzVar7.an();
                throw th;
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:285|(2:287|(8:289|290|(5:292|47|(0)(0)|50|(0)(0))|46|47|(0)(0)|50|(0)(0)))|293|294|295|296|297|290|(0)|46|47|(0)(0)|50|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(62:(2:59|(5:61|(1:63)|64|65|66))|67|(2:69|(5:71|(1:73)|74|75|76))(1:256)|77|(1:79)(1:255)|80|(1:82)|83|(2:85|(1:89))|90|(3:91|92|93)|94|(1:96)|97|(2:99|(1:105)(3:102|103|104))(1:251)|106|(1:108)|109|(1:111)|112|(1:114)|115|(1:119)|120|(1:122)|123|(1:125)|126|(1:130)|131|(1:133)|134|(33:138|(4:141|(3:143|144|(3:146|147|(3:149|150|152)(1:242))(1:244))(1:248)|243|139)|249|153|(1:155)|(1:157)|158|(4:162|(1:164)(1:172)|165|(2:169|(1:171)))|173|(1:175)(1:241)|176|(2:178|(1:180)(2:181|182))|183|(3:185|(1:187)|188)|189|(1:193)|194|(1:196)|197|(3:200|201|198)|202|203|204|205|206|(2:207|(2:209|(1:211)(1:226))(3:227|228|(1:233)(1:232)))|213|214|215|(1:217)(2:222|223)|218|219|220)|250|(0)|158|(5:160|162|(0)(0)|165|(3:167|169|(0)))|173|(0)(0)|176|(0)|183|(0)|189|(2:191|193)|194|(0)|197|(1:198)|202|203|204|205|206|(3:207|(0)(0)|226)|213|214|215|(0)(0)|218|219|220) */
    /* JADX WARN: Can't wrap try/catch for region: R(64:(2:59|(5:61|(1:63)|64|65|66))|67|(2:69|(5:71|(1:73)|74|75|76))(1:256)|77|(1:79)(1:255)|80|(1:82)|83|(2:85|(1:89))|90|91|92|93|94|(1:96)|97|(2:99|(1:105)(3:102|103|104))(1:251)|106|(1:108)|109|(1:111)|112|(1:114)|115|(1:119)|120|(1:122)|123|(1:125)|126|(1:130)|131|(1:133)|134|(33:138|(4:141|(3:143|144|(3:146|147|(3:149|150|152)(1:242))(1:244))(1:248)|243|139)|249|153|(1:155)|(1:157)|158|(4:162|(1:164)(1:172)|165|(2:169|(1:171)))|173|(1:175)(1:241)|176|(2:178|(1:180)(2:181|182))|183|(3:185|(1:187)|188)|189|(1:193)|194|(1:196)|197|(3:200|201|198)|202|203|204|205|206|(2:207|(2:209|(1:211)(1:226))(3:227|228|(1:233)(1:232)))|213|214|215|(1:217)(2:222|223)|218|219|220)|250|(0)|158|(5:160|162|(0)(0)|165|(3:167|169|(0)))|173|(0)(0)|176|(0)|183|(0)|189|(2:191|193)|194|(0)|197|(1:198)|202|203|204|205|206|(3:207|(0)(0)|226)|213|214|215|(0)(0)|218|219|220) */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x096a, code lost:
    
        r12 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0a1f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x0a26, code lost:
    
        ((g.cyg) r2.z).zzay().v().e(g.bgm.t(r3.f17049c), "Error storing raw event. appId", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0a3e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0a5b, code lost:
    
        zzay().v().e(g.bgm.t(r6.g()), "Data loss. Failed to insert raw event metadata. appId", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x02b2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x02b3, code lost:
    
        ((g.cyg) r10.z).zzay().v().e(g.bgm.t(r11), "Error pruning currencies. appId", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0766 A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0795 A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x07bc A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x079a A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x07de A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x080a A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0827 A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x08ae A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x08ca A[Catch: all -> 0x0186, TRY_LEAVE, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x095e A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0a07 A[Catch: all -> 0x0186, SQLiteException -> 0x0a1f, TRY_LEAVE, TryCatch #2 {SQLiteException -> 0x0a1f, blocks: (B:215:0x09f8, B:217:0x0a07), top: B:214:0x09f8, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0a21  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x096c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x07e5  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0336 A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x02eb A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0398 A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:33:0x015f, B:36:0x0170, B:38:0x017a, B:41:0x0189, B:47:0x0320, B:50:0x035e, B:52:0x0398, B:54:0x039d, B:55:0x03b4, B:59:0x03c7, B:61:0x03e1, B:63:0x03e7, B:64:0x03fe, B:69:0x0423, B:73:0x0446, B:74:0x045d, B:77:0x0470, B:82:0x04a1, B:83:0x04b5, B:85:0x04bf, B:87:0x04cc, B:89:0x04d2, B:90:0x04db, B:92:0x04e9, B:96:0x052e, B:97:0x0543, B:99:0x0563, B:102:0x058c, B:105:0x05d4, B:106:0x0603, B:108:0x0637, B:109:0x063c, B:111:0x0644, B:112:0x0649, B:114:0x0651, B:115:0x0656, B:117:0x0666, B:119:0x066e, B:120:0x0673, B:122:0x067c, B:123:0x0680, B:125:0x068d, B:126:0x0692, B:128:0x06b6, B:130:0x06be, B:131:0x06c3, B:133:0x06c9, B:134:0x06cc, B:136:0x06e2, B:138:0x06eb, B:139:0x0705, B:141:0x070b, B:144:0x071f, B:147:0x072b, B:150:0x0738, B:246:0x074f, B:153:0x075d, B:157:0x0766, B:158:0x0769, B:160:0x0784, B:162:0x0788, B:164:0x0795, B:165:0x07a3, B:167:0x07ad, B:169:0x07b1, B:171:0x07bc, B:172:0x079a, B:173:0x07c5, B:175:0x07de, B:176:0x07e6, B:178:0x080a, B:181:0x0816, B:182:0x0819, B:183:0x081a, B:185:0x0827, B:187:0x0845, B:188:0x0852, B:189:0x0888, B:191:0x0890, B:193:0x089a, B:194:0x08a4, B:196:0x08ae, B:197:0x08b8, B:198:0x08c4, B:200:0x08ca, B:203:0x08f8, B:205:0x093a, B:206:0x0945, B:207:0x0958, B:209:0x095e, B:213:0x09ad, B:215:0x09f8, B:217:0x0a07, B:218:0x0a70, B:223:0x0a23, B:225:0x0a26, B:228:0x096c, B:230:0x0998, B:236:0x0a41, B:237:0x0a5a, B:240:0x0a5b, B:251:0x05f3, B:254:0x0513, B:255:0x0491, B:257:0x0336, B:258:0x0344, B:260:0x034a, B:263:0x0358, B:268:0x01a0, B:271:0x01ac, B:273:0x01c3, B:278:0x01e1, B:281:0x0221, B:283:0x0227, B:285:0x0235, B:287:0x0246, B:289:0x0256, B:290:0x02e0, B:292:0x02eb, B:294:0x0286, B:296:0x02a0, B:297:0x02c8, B:300:0x02b3, B:302:0x01ef, B:307:0x0217), top: B:32:0x015f, inners: #2, #3, #4, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void bk(ctf ctfVar, afh afhVar) {
        String str;
        long longValue;
        dqu dquVar;
        cyg cygVar;
        String str2;
        ffu ffuVar;
        ggz ggzVar;
        ecv ecvVar;
        cde cdeVar;
        Bundle bundle;
        long j;
        long intValue;
        long j2;
        long j3;
        cyg cygVar2;
        fmv fmvVar;
        bwz m;
        ArrayList arrayList;
        rs h;
        gxx gxxVar;
        cyo ay;
        List bf;
        int i;
        ggz ggzVar2;
        fzb fzbVar;
        ggz ggzVar3;
        Bundle bundle2;
        Iterator<String> it;
        int i2;
        ContentValues contentValues;
        Pair j4;
        Object obj;
        ckd.k(afhVar);
        ckd.bf(afhVar.zza);
        long nanoTime = System.nanoTime();
        zzaz()._e();
        bi();
        String str3 = afhVar.zza;
        fit fitVar = this.f12159e;
        ag(fitVar);
        cyg cygVar3 = (cyg) fitVar.z;
        if (TextUtils.isEmpty(afhVar.zzb) && TextUtils.isEmpty(afhVar.zzq)) {
            return;
        }
        if (!afhVar.zzh) {
            bp(afhVar);
            return;
        }
        dqu dquVar2 = this.u;
        ag(dquVar2);
        boolean ar = dquVar2.ar(str3, ctfVar.zza);
        ecv ecvVar2 = this.r;
        cyg cygVar4 = this.m;
        if (ar) {
            zzay().x().e(bgm.t(str3), "Dropping blocked event. appId", cygVar4.ap().f(ctfVar.zza));
            ag(dquVar2);
            if (!"1".equals(dquVar2.c(str3, "measurement.upload.blacklist_internal"))) {
                ag(dquVar2);
                if (!"1".equals(dquVar2.c(str3, "measurement.upload.blacklist_public"))) {
                    if ("_err".equals(ctfVar.zza)) {
                        return;
                    }
                    ap();
                    dkq.v(ecvVar2, str3, 11, "_ev", ctfVar.zza, 0);
                    return;
                }
            }
            ggz ggzVar4 = this.l;
            ag(ggzVar4);
            cyo ay2 = ggzVar4.ay(str3);
            if (ay2 != null) {
                cyg cygVar5 = ay2.k;
                fth fthVar = cygVar5.j;
                cyg.ak(fthVar);
                fthVar._e();
                long j5 = ay2.f13768ab;
                fth fthVar2 = cygVar5.j;
                cyg.ak(fthVar2);
                fthVar2._e();
                long max = Math.max(j5, ay2.m);
                ((czz) zzav()).getClass();
                long abs = Math.abs(System.currentTimeMillis() - max);
                bm();
                if (abs > ((Long) gad.f17777b.h(null)).longValue()) {
                    zzay().o.h("Fetching config for blocked app");
                    au(ay2);
                    return;
                }
                return;
            }
            return;
        }
        dhh f2 = dhh.f(ctfVar);
        dkq ap = ap();
        dsd bm = bm();
        bm.getClass();
        ap.ca(f2, Math.max(Math.min(bm.k(str3, gad.bp), 100), 25));
        ctf j6 = f2.j();
        if (Log.isLoggable(zzay().al(), 2)) {
            zzay().w().i(cygVar4.ap().k(j6), "Logging event");
        }
        ggz ggzVar5 = this.l;
        ag(ggzVar5);
        ggzVar5.ap();
        try {
            bp(afhVar);
            boolean z = "ecommerce_purchase".equals(j6.zza) || "purchase".equals(j6.zza) || "refund".equals(j6.zza);
            if (!"_iap".equals(j6.zza)) {
                if (z) {
                    z = true;
                } else {
                    dquVar = dquVar2;
                    str2 = "_err";
                    cygVar = cygVar4;
                    ecvVar = ecvVar2;
                    boolean t = dkq.t(j6.zza);
                    boolean equals = str2.equals(j6.zza);
                    ap();
                    cdeVar = j6.zzb;
                    if (cdeVar == null) {
                        j = 0;
                    } else {
                        bundle = cdeVar.zza;
                        Iterator<String> it2 = bundle.keySet().iterator();
                        j = 0;
                        while (it2.hasNext()) {
                            if (cdeVar.zzf(it2.next()) instanceof Parcelable[]) {
                                j += ((Parcelable[]) r10).length;
                            }
                        }
                    }
                    ggz ggzVar6 = this.l;
                    ag(ggzVar6);
                    fyy v = ggzVar6.v(bs(), str3, j + 1, true, t, false, equals, false);
                    long j7 = v.f17679d;
                    bm();
                    intValue = j7 - ((Integer) gad.f17780e.h(null)).intValue();
                    if (intValue > 0) {
                        if (intValue % 1000 == 1) {
                            zzay().v().e(bgm.t(str3), "Data loss. Too many events logged. appId, count", Long.valueOf(v.f17679d));
                        }
                        ggz ggzVar7 = this.l;
                        ag(ggzVar7);
                        ggzVar7.av();
                        ggz ggzVar8 = this.l;
                        ag(ggzVar8);
                        ggzVar8.an();
                        return;
                    }
                    if (t) {
                        long j8 = v.f17678c;
                        bm();
                        long intValue2 = j8 - ((Integer) gad.aq.h(null)).intValue();
                        if (intValue2 > 0) {
                            if (intValue2 % 1000 == 1) {
                                zzay().v().e(bgm.t(str3), "Data loss. Too many public events logged. appId, count", Long.valueOf(v.f17678c));
                            }
                            ap();
                            dkq.v(ecvVar, str3, 16, "_ev", j6.zza, 0);
                            ggz ggzVar9 = this.l;
                            ag(ggzVar9);
                            ggzVar9.av();
                            ggz ggzVar10 = this.l;
                            ag(ggzVar10);
                            ggzVar10.an();
                            return;
                        }
                    }
                    if (equals) {
                        j2 = 0;
                        long max2 = v.f17676a - Math.max(0, Math.min(1000000, bm().k(afhVar.zza, gad.v)));
                        if (max2 > 0) {
                            if (max2 == 1) {
                                zzay().v().e(bgm.t(str3), "Too many error events logged. appId, count", Long.valueOf(v.f17676a));
                            }
                            ggz ggzVar11 = this.l;
                            ag(ggzVar11);
                            ggzVar11.av();
                            ggz ggzVar12 = this.l;
                            ag(ggzVar12);
                            ggzVar12.an();
                            return;
                        }
                    } else {
                        j2 = 0;
                    }
                    Bundle zzc = j6.zzb.zzc();
                    ap().az(zzc, "_o", j6.zzc);
                    if (TextUtils.isEmpty(str3) ? false : ((cyg) ap().z).f13747e.u("debug.firebase.analytics.app").equals(str3)) {
                        ap().az(zzc, "_dbg", 1L);
                        ap().az(zzc, "_r", 1L);
                    }
                    if ("_s".equals(j6.zza)) {
                        ggz ggzVar13 = this.l;
                        ag(ggzVar13);
                        ffu al = ggzVar13.al(afhVar.zza, "_sno");
                        if (al != null && (al.f16725b instanceof Long)) {
                            ap().az(zzc, "_sno", al.f16725b);
                        }
                    }
                    ggz ggzVar14 = this.l;
                    ag(ggzVar14);
                    ckd.bf(str3);
                    ggzVar14._e();
                    ggzVar14.n();
                    try {
                        j3 = ggzVar14.bg().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str3, String.valueOf(Math.max(0, Math.min(1000000, ((cyg) ggzVar14.z).f13747e.k(str3, gad.ap))))});
                    } catch (SQLiteException e2) {
                        ((cyg) ggzVar14.z).zzay().v().e(bgm.t(str3), "Error deleting over the limit events. appId", e2);
                        j3 = j2;
                    }
                    if (j3 > j2) {
                        zzay().x().e(bgm.t(str3), "Data lost. Too many events stored on disk, deleted. appId", Long.valueOf(j3));
                    }
                    fmv fmvVar2 = new fmv(this.m, j6.zzc, str3, j6.zza, j6.zzd, zzc);
                    String str4 = fmvVar2.f17051e;
                    ggz ggzVar15 = this.l;
                    ag(ggzVar15);
                    bwz as = ggzVar15.as(str3, str4);
                    if (as == null) {
                        ggz ggzVar16 = this.l;
                        ag(ggzVar16);
                        long u = ggzVar16.u(str3);
                        bm().getClass();
                        tw twVar = gad.f17782g;
                        if (u >= Math.max(Math.min(r10.k(str3, twVar), ZeusPluginEventCallback.EVENT_START_LOAD), 500) && t) {
                            dvb v2 = zzay().v();
                            dfq t2 = bgm.t(str3);
                            String f3 = cygVar.ap().f(str4);
                            dsd bm2 = bm();
                            bm2.getClass();
                            v2.f("Too many event names used, ignoring event. appId, name, supported count", t2, f3, Integer.valueOf(Math.max(Math.min(bm2.k(str3, twVar), ZeusPluginEventCallback.EVENT_START_LOAD), 500)));
                            ap();
                            dkq.v(ecvVar, str3, 8, null, null, 0);
                            ggz ggzVar17 = this.l;
                            ag(ggzVar17);
                            ggzVar17.an();
                            return;
                        }
                        m = new bwz(str3, fmvVar2.f17051e, 0L, 0L, 0L, fmvVar2.f17047a, 0L, null, null, null, null);
                        fmvVar = fmvVar2;
                        cygVar2 = cygVar;
                    } else {
                        cygVar2 = cygVar;
                        fmv g2 = fmvVar2.g(cygVar2, as.f12354f);
                        fmvVar = g2;
                        m = as.m(g2.f17047a);
                    }
                    ggz ggzVar18 = this.l;
                    ag(ggzVar18);
                    ggzVar18.bi(m);
                    zzaz()._e();
                    bi();
                    ckd.bf(fmvVar.f17049c);
                    ckd.u(fmvVar.f17049c.equals(afhVar.zza));
                    epg bh = fzb.bh();
                    bh.b();
                    bh.ba();
                    if (!TextUtils.isEmpty(afhVar.zza)) {
                        bh.al(afhVar.zza);
                    }
                    if (!TextUtils.isEmpty(afhVar.zzd)) {
                        bh.e(afhVar.zzd);
                    }
                    if (!TextUtils.isEmpty(afhVar.zzc)) {
                        bh.ak(afhVar.zzc);
                    }
                    eur.c();
                    if (bm().g(null, gad.o) && !TextUtils.isEmpty(afhVar.zzx)) {
                        bh.c(afhVar.zzx);
                    }
                    long j9 = afhVar.zzj;
                    if (j9 != -2147483648L) {
                        bh.ar((int) j9);
                    }
                    bh.v(afhVar.zze);
                    if (!TextUtils.isEmpty(afhVar.zzb)) {
                        bh.as(afhVar.zzb);
                    }
                    String str5 = afhVar.zza;
                    ckd.k(str5);
                    bh.at(as(str5).h(rs.d(afhVar.zzv)).f());
                    if (bh.an().isEmpty() && !TextUtils.isEmpty(afhVar.zzq)) {
                        bh.w(afhVar.zzq);
                    }
                    long j10 = afhVar.zzf;
                    if (j10 != j2) {
                        bh.y(j10);
                    }
                    bh.bb(afhVar.zzs);
                    ag(fitVar);
                    Map bz = gad.bz(fitVar.f10133a.m.zzau());
                    try {
                        if (bz != null && !bz.isEmpty()) {
                            arrayList = new ArrayList();
                            int intValue3 = ((Integer) gad.at.h(null)).intValue();
                            for (Map.Entry entry : bz.entrySet()) {
                                if (((String) entry.getKey()).startsWith("measurement.id.")) {
                                    try {
                                        int parseInt = Integer.parseInt((String) entry.getValue());
                                        if (parseInt != 0) {
                                            arrayList.add(Integer.valueOf(parseInt));
                                            if (arrayList.size() >= intValue3) {
                                                cygVar3.zzay().x().i(Integer.valueOf(arrayList.size()), "Too many experiment IDs. Number of IDs");
                                                break;
                                            }
                                            continue;
                                        } else {
                                            continue;
                                        }
                                    } catch (NumberFormatException e3) {
                                        cygVar3.zzay().x().i(e3, "Experiment ID NumberFormatException");
                                    }
                                }
                            }
                            if (arrayList.isEmpty()) {
                            }
                            if (arrayList != null) {
                                bh.t(arrayList);
                            }
                            String str6 = afhVar.zza;
                            ckd.k(str6);
                            h = as(str6).h(rs.d(afhVar.zzv));
                            gxxVar = gxx.AD_STORAGE;
                            if (h.g(gxxVar) && afhVar.zzo) {
                                aaq aaqVar = this.y;
                                String str7 = afhVar.zza;
                                aaqVar.getClass();
                                j4 = !h.g(gxxVar) ? aaqVar.j(str7) : new Pair("", Boolean.FALSE);
                                if (!TextUtils.isEmpty((CharSequence) j4.first) && afhVar.zzo) {
                                    bh.az((String) j4.first);
                                    obj = j4.second;
                                    if (obj != null) {
                                        bh.z(((Boolean) obj).booleanValue());
                                    }
                                }
                            }
                            cygVar2.ar().an();
                            String str8 = Build.MODEL;
                            bh.af();
                            cygVar2.ar().an();
                            String str9 = Build.VERSION.RELEASE;
                            if (!bh.i) {
                                bh.p();
                                bh.i = false;
                            }
                            fzb.ap((fzb) bh.k, str9);
                            bh.ac((int) cygVar2.ar().k());
                            bh.ao(cygVar2.ar().l());
                            if (cygVar2.as()) {
                                bh.g();
                                if (!TextUtils.isEmpty(null)) {
                                    bh.ah();
                                    throw null;
                                }
                            }
                            ggz ggzVar19 = this.l;
                            ag(ggzVar19);
                            ay = ggzVar19.ay(afhVar.zza);
                            if (ay == null) {
                                ay = new cyo(cygVar2, afhVar.zza);
                                ay.bj(ba(h));
                                ay.bf(afhVar.zzk);
                                ay.bo(afhVar.zzb);
                                if (h.g(gxxVar)) {
                                    ay.ak(this.y.k(afhVar.zza, afhVar.zzo));
                                }
                                long j11 = j2;
                                ay.av(j11);
                                ay.aw(j11);
                                ay.as(j11);
                                ay.aq(afhVar.zzc);
                                ay.ax(afhVar.zzj);
                                ay.an(afhVar.zzd);
                                ay.az(afhVar.zze);
                                ay.am(afhVar.zzf);
                                ay.bm(afhVar.zzh);
                                ay.aj(afhVar.zzs);
                                ggz ggzVar20 = this.l;
                                ag(ggzVar20);
                                ggzVar20.ax(ay);
                            }
                            if (h.g(gxx.ANALYTICS_STORAGE) && !TextUtils.isEmpty(ay.al())) {
                                String al2 = ay.al();
                                ckd.k(al2);
                                bh.u(al2);
                            }
                            if (!TextUtils.isEmpty(ay.bk())) {
                                String bk = ay.bk();
                                ckd.k(bk);
                                bh.a(bk);
                            }
                            ggz ggzVar21 = this.l;
                            ag(ggzVar21);
                            bf = ggzVar21.bf(afhVar.zza);
                            for (i = 0; i < bf.size(); i++) {
                                eft b2 = ne.b();
                                b2.a(((ffu) bf.get(i)).f16728e);
                                b2.b(((ffu) bf.get(i)).f16724a);
                                ag(fitVar);
                                fitVar.an(b2, ((ffu) bf.get(i)).f16725b);
                                bh.ad(b2);
                            }
                            ggzVar2 = this.l;
                            ag(ggzVar2);
                            fzbVar = (fzb) bh.o();
                            ggzVar2._e();
                            ggzVar2.n();
                            ckd.bf(fzbVar.ch());
                            byte[] z2 = fzbVar.z();
                            fit fitVar2 = ggzVar2.f10133a.f12159e;
                            ag(fitVar2);
                            long av = fitVar2.av(z2);
                            ContentValues contentValues2 = new ContentValues();
                            contentValues2.put(PluginConstants.KEY_APP_ID, fzbVar.ch());
                            contentValues2.put("metadata_fingerprint", Long.valueOf(av));
                            contentValues2.put("metadata", z2);
                            ggzVar2.bg().insertWithOnConflict("raw_events_metadata", null, contentValues2, 4);
                            ggzVar3 = this.l;
                            ag(ggzVar3);
                            bundle2 = fmvVar.f17050d.zza;
                            it = bundle2.keySet().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    if ("_r".equals(it.next())) {
                                        break;
                                    }
                                } else {
                                    ag(dquVar);
                                    boolean al3 = dquVar.al(fmvVar.f17049c, fmvVar.f17051e);
                                    ggz ggzVar22 = this.l;
                                    ag(ggzVar22);
                                    fyy v3 = ggzVar22.v(bs(), fmvVar.f17049c, 1L, false, false, false, false, false);
                                    if (!al3 || v3.f17677b >= bm().k(fmvVar.f17049c, gad.k)) {
                                        i2 = 0;
                                    }
                                }
                            }
                            ggzVar3._e();
                            ggzVar3.n();
                            ckd.bf(fmvVar.f17049c);
                            fit fitVar3 = ggzVar3.f10133a.f12159e;
                            ag(fitVar3);
                            byte[] z3 = fitVar3.ao(fmvVar).z();
                            contentValues = new ContentValues();
                            contentValues.put(PluginConstants.KEY_APP_ID, fmvVar.f17049c);
                            contentValues.put(abn.EXTRA_UA_APP_NAME, fmvVar.f17051e);
                            contentValues.put("timestamp", Long.valueOf(fmvVar.f17047a));
                            contentValues.put("metadata_fingerprint", Long.valueOf(av));
                            contentValues.put("data", z3);
                            contentValues.put("realtime", Integer.valueOf(i2));
                            if (ggzVar3.bg().insert("raw_events", null, contentValues) != -1) {
                                ((cyg) ggzVar3.z).zzay().v().i(bgm.t(fmvVar.f17049c), "Failed to insert raw event (got -1). appId");
                            } else {
                                this.h = 0L;
                            }
                            ggz ggzVar23 = this.l;
                            ag(ggzVar23);
                            ggzVar23.av();
                            ggz ggzVar24 = this.l;
                            ag(ggzVar24);
                            ggzVar24.an();
                            ar();
                            zzay().w().i(Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / C.MICROS_PER_SECOND), "Background event processing time, ms");
                            return;
                        }
                        ggzVar2.bg().insertWithOnConflict("raw_events_metadata", null, contentValues2, 4);
                        ggzVar3 = this.l;
                        ag(ggzVar3);
                        bundle2 = fmvVar.f17050d.zza;
                        it = bundle2.keySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                            }
                        }
                        ggzVar3._e();
                        ggzVar3.n();
                        ckd.bf(fmvVar.f17049c);
                        fit fitVar32 = ggzVar3.f10133a.f12159e;
                        ag(fitVar32);
                        byte[] z32 = fitVar32.ao(fmvVar).z();
                        contentValues = new ContentValues();
                        contentValues.put(PluginConstants.KEY_APP_ID, fmvVar.f17049c);
                        contentValues.put(abn.EXTRA_UA_APP_NAME, fmvVar.f17051e);
                        contentValues.put("timestamp", Long.valueOf(fmvVar.f17047a));
                        contentValues.put("metadata_fingerprint", Long.valueOf(av));
                        contentValues.put("data", z32);
                        contentValues.put("realtime", Integer.valueOf(i2));
                        if (ggzVar3.bg().insert("raw_events", null, contentValues) != -1) {
                        }
                        ggz ggzVar232 = this.l;
                        ag(ggzVar232);
                        ggzVar232.av();
                        ggz ggzVar242 = this.l;
                        ag(ggzVar242);
                        ggzVar242.an();
                        ar();
                        zzay().w().i(Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / C.MICROS_PER_SECOND), "Background event processing time, ms");
                        return;
                    } catch (SQLiteException e4) {
                        ((cyg) ggzVar2.z).zzay().v().e(bgm.t(fzbVar.ch()), "Error storing raw event metadata. appId", e4);
                        throw e4;
                    }
                    arrayList = null;
                    if (arrayList != null) {
                    }
                    String str62 = afhVar.zza;
                    ckd.k(str62);
                    h = as(str62).h(rs.d(afhVar.zzv));
                    gxxVar = gxx.AD_STORAGE;
                    if (h.g(gxxVar)) {
                        aaq aaqVar2 = this.y;
                        String str72 = afhVar.zza;
                        aaqVar2.getClass();
                        if (!h.g(gxxVar)) {
                        }
                        if (!TextUtils.isEmpty((CharSequence) j4.first)) {
                            bh.az((String) j4.first);
                            obj = j4.second;
                            if (obj != null) {
                            }
                        }
                    }
                    cygVar2.ar().an();
                    String str82 = Build.MODEL;
                    bh.af();
                    cygVar2.ar().an();
                    String str92 = Build.VERSION.RELEASE;
                    if (!bh.i) {
                    }
                    fzb.ap((fzb) bh.k, str92);
                    bh.ac((int) cygVar2.ar().k());
                    bh.ao(cygVar2.ar().l());
                    if (cygVar2.as()) {
                    }
                    ggz ggzVar192 = this.l;
                    ag(ggzVar192);
                    ay = ggzVar192.ay(afhVar.zza);
                    if (ay == null) {
                    }
                    if (h.g(gxx.ANALYTICS_STORAGE)) {
                        String al22 = ay.al();
                        ckd.k(al22);
                        bh.u(al22);
                    }
                    if (!TextUtils.isEmpty(ay.bk())) {
                    }
                    ggz ggzVar212 = this.l;
                    ag(ggzVar212);
                    bf = ggzVar212.bf(afhVar.zza);
                    while (i < bf.size()) {
                    }
                    ggzVar2 = this.l;
                    ag(ggzVar2);
                    fzbVar = (fzb) bh.o();
                    ggzVar2._e();
                    ggzVar2.n();
                    ckd.bf(fzbVar.ch());
                    byte[] z22 = fzbVar.z();
                    fit fitVar22 = ggzVar2.f10133a.f12159e;
                    ag(fitVar22);
                    long av2 = fitVar22.av(z22);
                    ContentValues contentValues22 = new ContentValues();
                    contentValues22.put(PluginConstants.KEY_APP_ID, fzbVar.ch());
                    contentValues22.put("metadata_fingerprint", Long.valueOf(av2));
                    contentValues22.put("metadata", z22);
                }
            }
            String zzg = j6.zzb.zzg("currency");
            if (z) {
                double doubleValue = j6.zzb.zzd("value").doubleValue() * 1000000.0d;
                if (doubleValue == 0.0d) {
                    str = "_err";
                    doubleValue = j6.zzb.zze("value").longValue() * 1000000.0d;
                } else {
                    str = "_err";
                }
                if (doubleValue > 9.223372036854776E18d || doubleValue < -9.223372036854776E18d) {
                    zzay().x().e(bgm.t(str3), "Data lost. Currency value is too big. appId", Double.valueOf(doubleValue));
                    ggz ggzVar25 = this.l;
                    ag(ggzVar25);
                    ggzVar25.av();
                    ggz ggzVar26 = this.l;
                    ag(ggzVar26);
                    ggzVar26.an();
                    return;
                }
                longValue = Math.round(doubleValue);
                if ("refund".equals(j6.zza)) {
                    longValue = -longValue;
                }
            } else {
                str = "_err";
                longValue = j6.zzb.zze("value").longValue();
            }
            if (!TextUtils.isEmpty(zzg)) {
                String upperCase = zzg.toUpperCase(Locale.US);
                if (upperCase.matches("[A-Z]{3}")) {
                    String concat = "_ltv_".concat(upperCase);
                    ggz ggzVar27 = this.l;
                    ag(ggzVar27);
                    ffu al4 = ggzVar27.al(str3, concat);
                    if (al4 != null) {
                        Object obj2 = al4.f16725b;
                        if (obj2 instanceof Long) {
                            long longValue2 = ((Long) obj2).longValue();
                            String str10 = j6.zzc;
                            ((czz) zzav()).getClass();
                            cygVar = cygVar4;
                            dquVar = dquVar2;
                            str2 = str;
                            ffuVar = new ffu(str3, str10, concat, System.currentTimeMillis(), Long.valueOf(longValue2 + longValue));
                            ggzVar = this.l;
                            ag(ggzVar);
                            if (!ggzVar.bc(ffuVar)) {
                                zzay().v().f("Too many unique user properties are set. Ignoring user property. appId", bgm.t(str3), cygVar.ap().i(ffuVar.f16728e), ffuVar.f16725b);
                                ap();
                                dkq.v(ecvVar2, str3, 9, null, null, 0);
                                ecvVar = ecvVar2;
                                boolean t3 = dkq.t(j6.zza);
                                boolean equals2 = str2.equals(j6.zza);
                                ap();
                                cdeVar = j6.zzb;
                                if (cdeVar == null) {
                                }
                                ggz ggzVar62 = this.l;
                                ag(ggzVar62);
                                fyy v4 = ggzVar62.v(bs(), str3, j + 1, true, t3, false, equals2, false);
                                long j72 = v4.f17679d;
                                bm();
                                intValue = j72 - ((Integer) gad.f17780e.h(null)).intValue();
                                if (intValue > 0) {
                                }
                            }
                            ecvVar = ecvVar2;
                            boolean t32 = dkq.t(j6.zza);
                            boolean equals22 = str2.equals(j6.zza);
                            ap();
                            cdeVar = j6.zzb;
                            if (cdeVar == null) {
                            }
                            ggz ggzVar622 = this.l;
                            ag(ggzVar622);
                            fyy v42 = ggzVar622.v(bs(), str3, j + 1, true, t32, false, equals22, false);
                            long j722 = v42.f17679d;
                            bm();
                            intValue = j722 - ((Integer) gad.f17780e.h(null)).intValue();
                            if (intValue > 0) {
                            }
                        }
                    }
                    dquVar = dquVar2;
                    long j12 = longValue;
                    cygVar = cygVar4;
                    str2 = str;
                    ggz ggzVar28 = this.l;
                    ag(ggzVar28);
                    int k = bm().k(str3, gad.bq) - 1;
                    ckd.bf(str3);
                    ggzVar28._e();
                    ggzVar28.n();
                    ggzVar28.bg().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", new String[]{str3, str3, String.valueOf(k)});
                    String str11 = j6.zzc;
                    ((czz) zzav()).getClass();
                    ffuVar = new ffu(str3, str11, concat, System.currentTimeMillis(), Long.valueOf(j12));
                    ggzVar = this.l;
                    ag(ggzVar);
                    if (!ggzVar.bc(ffuVar)) {
                    }
                    ecvVar = ecvVar2;
                    boolean t322 = dkq.t(j6.zza);
                    boolean equals222 = str2.equals(j6.zza);
                    ap();
                    cdeVar = j6.zzb;
                    if (cdeVar == null) {
                    }
                    ggz ggzVar6222 = this.l;
                    ag(ggzVar6222);
                    fyy v422 = ggzVar6222.v(bs(), str3, j + 1, true, t322, false, equals222, false);
                    long j7222 = v422.f17679d;
                    bm();
                    intValue = j7222 - ((Integer) gad.f17780e.h(null)).intValue();
                    if (intValue > 0) {
                    }
                }
            }
            dquVar = dquVar2;
            cygVar = cygVar4;
            str2 = str;
            ecvVar = ecvVar2;
            boolean t3222 = dkq.t(j6.zza);
            boolean equals2222 = str2.equals(j6.zza);
            ap();
            cdeVar = j6.zzb;
            if (cdeVar == null) {
            }
            ggz ggzVar62222 = this.l;
            ag(ggzVar62222);
            fyy v4222 = ggzVar62222.v(bs(), str3, j + 1, true, t3222, false, equals2222, false);
            long j72222 = v4222.f17679d;
            bm();
            intValue = j72222 - ((Integer) gad.f17780e.h(null)).intValue();
            if (intValue > 0) {
            }
        } catch (Throwable th) {
            ggz ggzVar29 = this.l;
            ag(ggzVar29);
            ggzVar29.an();
            throw th;
        }
    }

    public final boolean bl() {
        zzaz()._e();
        bi();
        ggz ggzVar = this.l;
        ag(ggzVar);
        if (ggzVar.ar("select count(1) > 0 from raw_events", null) != 0) {
            return true;
        }
        ggz ggzVar2 = this.l;
        ag(ggzVar2);
        return !TextUtils.isEmpty(ggzVar2.ba());
    }

    public final dsd bm() {
        cyg cygVar = this.m;
        ckd.k(cygVar);
        return cygVar.f13747e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x01dc, code lost:
    
        if (r6 < android.os.SystemClock.elapsedRealtime()) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void bn(String str, epg epgVar) {
        int q;
        int indexOf;
        fui.c();
        boolean g2 = bm().g(str, gad.bk);
        dqu dquVar = this.u;
        if (g2) {
            ag(dquVar);
            dquVar._e();
            dquVar.ao(str);
            Set set = (Set) dquVar.t.get(str);
            if (set != null) {
                if (epgVar.i) {
                    epgVar.p();
                    epgVar.i = false;
                }
                fzb.as((fzb) epgVar.k, set);
            }
        }
        if (bm().g(str, gad.bm)) {
            ag(dquVar);
            tl tlVar = dquVar.t;
            dquVar._e();
            dquVar.ao(str);
            if (tlVar.get(str) != null && (((Set) tlVar.get(str)).contains("device_model") || ((Set) tlVar.get(str)).contains("device_info"))) {
                if (epgVar.i) {
                    epgVar.p();
                    epgVar.i = false;
                }
                fzb.ar((fzb) epgVar.k);
            }
            ag(dquVar);
            dquVar._e();
            dquVar.ao(str);
            if (tlVar.get(str) != null && (((Set) tlVar.get(str)).contains("os_version") || ((Set) tlVar.get(str)).contains("device_info"))) {
                if (bm().g(str, gad.bx)) {
                    String cx = ((fzb) epgVar.k).cx();
                    if (!TextUtils.isEmpty(cx) && (indexOf = cx.indexOf(".")) != -1) {
                        String substring = cx.substring(0, indexOf);
                        if (epgVar.i) {
                            epgVar.p();
                            epgVar.i = false;
                        }
                        fzb.ap((fzb) epgVar.k, substring);
                    }
                } else {
                    if (epgVar.i) {
                        epgVar.p();
                        epgVar.i = false;
                    }
                    fzb.be((fzb) epgVar.k);
                }
            }
        }
        if (bm().g(str, gad.i)) {
            ag(dquVar);
            dquVar._e();
            dquVar.ao(str);
            tl tlVar2 = dquVar.t;
            if (tlVar2.get(str) != null && ((Set) tlVar2.get(str)).contains("user_id") && (q = fit.q(ada.COLUMN_ID, epgVar)) != -1) {
                if (epgVar.i) {
                    epgVar.p();
                    epgVar.i = false;
                }
                fzb.v((fzb) epgVar.k, q);
            }
        }
        if (bm().g(str, gad.av)) {
            ag(dquVar);
            dquVar._e();
            dquVar.ao(str);
            tl tlVar3 = dquVar.t;
            if (tlVar3.get(str) != null && ((Set) tlVar3.get(str)).contains("google_signals")) {
                if (epgVar.i) {
                    epgVar.p();
                    epgVar.i = false;
                }
                fzb.ax((fzb) epgVar.k);
            }
        }
        if (bm().g(str, gad.bn)) {
            ag(dquVar);
            dquVar._e();
            dquVar.ao(str);
            tl tlVar4 = dquVar.t;
            if (tlVar4.get(str) != null && ((Set) tlVar4.get(str)).contains("app_instance_id")) {
                if (epgVar.i) {
                    epgVar.p();
                    epgVar.i = false;
                }
                fzb.au((fzb) epgVar.k);
                if (bm().g(str, gad.f17775a)) {
                    HashMap hashMap = this.x;
                    dzl dzlVar = (dzl) hashMap.get(str);
                    if (dzlVar != null) {
                        long o = bm().o(str, gad.bi) + dzlVar.f15129b;
                        ((czz) zzav()).getClass();
                    }
                    byte[] bArr = new byte[16];
                    ap().av().nextBytes(bArr);
                    dzlVar = new dzl(this, String.format(Locale.US, "%032x", new BigInteger(1, bArr)));
                    hashMap.put(str, dzlVar);
                    String str2 = dzlVar.f15128a;
                    if (epgVar.i) {
                        epgVar.p();
                        epgVar.i = false;
                    }
                    fzb.av((fzb) epgVar.k, str2);
                }
            }
        }
        if (bm().g(str, gad.bh)) {
            ag(dquVar);
            dquVar._e();
            dquVar.ao(str);
            tl tlVar5 = dquVar.t;
            if (tlVar5.get(str) == null || !((Set) tlVar5.get(str)).contains("enhanced_user_id")) {
                return;
            }
            if (epgVar.i) {
                epgVar.p();
                epgVar.i = false;
            }
            fzb.e((fzb) epgVar.k);
        }
    }

    public final gwx bo() {
        gwx gwxVar = this.q;
        if (gwxVar != null) {
            return gwxVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final cyo bp(afh afhVar) {
        zzaz()._e();
        bi();
        ckd.k(afhVar);
        ckd.bf(afhVar.zza);
        fui.c();
        if (bm().g(afhVar.zza, gad.bn) && !afhVar.zzw.isEmpty()) {
            this.x.put(afhVar.zza, new dzl(this, afhVar.zzw));
        }
        ggz ggzVar = this.l;
        ag(ggzVar);
        cyo ay = ggzVar.ay(afhVar.zza);
        rs h = as(afhVar.zza).h(rs.d(afhVar.zzv));
        gxx gxxVar = gxx.AD_STORAGE;
        String k = h.g(gxxVar) ? this.y.k(afhVar.zza, afhVar.zzo) : "";
        if (ay == null) {
            ay = new cyo(this.m, afhVar.zza);
            if (h.g(gxx.ANALYTICS_STORAGE)) {
                ay.bj(ba(h));
            }
            if (h.g(gxxVar)) {
                ay.ak(k);
            }
        } else {
            if (h.g(gxxVar) && k != null) {
                fth fthVar = ay.k.j;
                cyg.ak(fthVar);
                fthVar._e();
                if (!k.equals(ay.j)) {
                    ay.ak(k);
                    if (afhVar.zzo) {
                        aaq aaqVar = this.y;
                        String str = afhVar.zza;
                        aaqVar.getClass();
                        if (!"00000000-0000-0000-0000-000000000000".equals((h.g(gxxVar) ? aaqVar.j(str) : new Pair("", Boolean.FALSE)).first)) {
                            ay.bj(ba(h));
                            ggz ggzVar2 = this.l;
                            ag(ggzVar2);
                            if (ggzVar2.al(afhVar.zza, ada.COLUMN_ID) != null) {
                                ggz ggzVar3 = this.l;
                                ag(ggzVar3);
                                if (ggzVar3.al(afhVar.zza, "_lair") == null) {
                                    ((czz) zzav()).getClass();
                                    ffu ffuVar = new ffu(afhVar.zza, LiveConfigKey.AUTO, "_lair", System.currentTimeMillis(), 1L);
                                    ggz ggzVar4 = this.l;
                                    ag(ggzVar4);
                                    ggzVar4.bc(ffuVar);
                                }
                            }
                        }
                    }
                }
            }
            if (TextUtils.isEmpty(ay.al()) && h.g(gxx.ANALYTICS_STORAGE)) {
                ay.bj(ba(h));
            }
        }
        cyg cygVar = ay.k;
        ay.bo(afhVar.zzb);
        ay.bd(afhVar.zzq);
        if (!TextUtils.isEmpty(afhVar.zzk)) {
            ay.bf(afhVar.zzk);
        }
        long j = afhVar.zze;
        if (j != 0) {
            ay.az(j);
        }
        if (!TextUtils.isEmpty(afhVar.zzc)) {
            ay.aq(afhVar.zzc);
        }
        ay.ax(afhVar.zzj);
        String str2 = afhVar.zzd;
        if (str2 != null) {
            ay.an(str2);
        }
        ay.am(afhVar.zzf);
        ay.bm(afhVar.zzh);
        if (!TextUtils.isEmpty(afhVar.zzg)) {
            ay.bh(afhVar.zzg);
        }
        boolean z = afhVar.zzo;
        fth fthVar2 = cygVar.j;
        cyg.ak(fthVar2);
        fthVar2._e();
        ay.n |= ay.s != z;
        ay.s = z;
        Boolean bool = afhVar.zzr;
        fth fthVar3 = cygVar.j;
        cyg.ak(fthVar3);
        fthVar3._e();
        ay.n |= !kj.s(ay.ae, bool);
        ay.ae = bool;
        ay.aj(afhVar.zzs);
        eur.c();
        if (bm().g(null, gad.o)) {
            String str3 = afhVar.zzx;
            fth fthVar4 = cygVar.j;
            cyg.ak(fthVar4);
            fthVar4._e();
            ay.n |= true ^ kj.s(ay.l, str3);
            ay.l = str3;
        }
        eaj eajVar = eaj.f15185a;
        ((hdr) eajVar.f15186b.zza()).getClass();
        if (bm().g(null, gad.w)) {
            ay.af(afhVar.zzt);
        } else {
            ((hdr) eajVar.f15186b.zza()).getClass();
            if (bm().g(null, gad.bl)) {
                ay.af(null);
            }
        }
        fth fthVar5 = cygVar.j;
        cyg.ak(fthVar5);
        fthVar5._e();
        if (ay.n) {
            ggz ggzVar5 = this.l;
            ag(ggzVar5);
            ggzVar5.ax(ay);
        }
        return ay;
    }

    public final void bq(epg epgVar, long j, boolean z) {
        ffu ffuVar;
        Object obj;
        String str = true != z ? "_lte" : "_se";
        ggz ggzVar = this.l;
        ag(ggzVar);
        ffu al = ggzVar.al(epgVar.g(), str);
        if (al == null || (obj = al.f16725b) == null) {
            String g2 = epgVar.g();
            ((czz) zzav()).getClass();
            ffuVar = new ffu(g2, LiveConfigKey.AUTO, str, System.currentTimeMillis(), Long.valueOf(j));
        } else {
            String g3 = epgVar.g();
            ((czz) zzav()).getClass();
            ffuVar = new ffu(g3, LiveConfigKey.AUTO, str, System.currentTimeMillis(), Long.valueOf(((Long) obj).longValue() + j));
        }
        eft b2 = ne.b();
        b2.a(str);
        ((czz) zzav()).getClass();
        b2.b(System.currentTimeMillis());
        Object obj2 = ffuVar.f16725b;
        b2.c(((Long) obj2).longValue());
        ne neVar = (ne) b2.o();
        int q = fit.q(str, epgVar);
        if (q >= 0) {
            if (epgVar.i) {
                epgVar.p();
                epgVar.i = false;
            }
            fzb.b((fzb) epgVar.k, q, neVar);
        } else {
            if (epgVar.i) {
                epgVar.p();
                epgVar.i = false;
            }
            fzb.bc((fzb) epgVar.k, neVar);
        }
        if (j > 0) {
            ggz ggzVar2 = this.l;
            ag(ggzVar2);
            ggzVar2.bc(ffuVar);
            zzay().f11519c.e(true != z ? "lifetime" : "session-scoped", "Updated engagement user property. scope, value", obj2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ec, code lost:
    
        if (r6 == null) goto L43;
     */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x00d7: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]), block:B:62:0x00d7 */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void br(ctf ctfVar, afh afhVar) {
        Throwable th;
        Cursor cursor;
        Cursor cursor2;
        ctf j;
        String zzg;
        ckd.bf(afhVar.zza);
        dhh f2 = dhh.f(ctfVar);
        dkq ap = ap();
        Bundle bundle = (Bundle) f2.f14174b;
        ggz ggzVar = this.l;
        ag(ggzVar);
        String str = afhVar.zza;
        cyg cygVar = (cyg) ggzVar.z;
        ggzVar._e();
        ggzVar.n();
        Cursor cursor3 = null;
        r5 = null;
        Bundle bundle2 = null;
        try {
            try {
                cursor = ggzVar.bg().rawQuery("select parameters from default_event_params where app_id=?", new String[]{str});
                try {
                } catch (SQLiteException e2) {
                    e = e2;
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.f11518b.i(e, "Error selecting default event parameters");
                }
            } catch (Throwable th2) {
                th = th2;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    throw th;
                }
                cursor3.close();
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor3 != null) {
            }
        }
        if (cursor.moveToFirst()) {
            try {
                kk kkVar = (kk) ((btw) fit.j(kk.g(), cursor.getBlob(0))).o();
                ggzVar.f10133a.bb();
                cwe<asm> q = kkVar.q();
                Bundle bundle3 = new Bundle();
                for (asm asmVar : q) {
                    String u = asmVar.u();
                    if (asmVar.r()) {
                        bundle3.putDouble(u, asmVar.q());
                    } else if (asmVar.w()) {
                        bundle3.putFloat(u, asmVar.t());
                    } else if (asmVar.m()) {
                        bundle3.putString(u, asmVar.x());
                    } else if (asmVar.v()) {
                        bundle3.putLong(u, asmVar.n());
                    }
                }
                cursor.close();
                bundle2 = bundle3;
            } catch (IOException e4) {
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.f11518b.e(bgm.t(str), "Failed to retrieve default event parameters. appId", e4);
            }
            ap.bf(bundle, bundle2);
            dkq ap2 = ap();
            dsd bm = bm();
            String str2 = afhVar.zza;
            bm.getClass();
            ap2.ca(f2, Math.max(Math.min(bm.k(str2, gad.bp), 100), 25));
            j = f2.j();
            if ("_cmp".equals(j.zza) && "referrer API v2".equals(j.zzb.zzg("_cis"))) {
                zzg = j.zzb.zzg("gclid");
                if (!TextUtils.isEmpty(zzg)) {
                    aq(new cmd("_lgclid", j.zzd, zzg, LiveConfigKey.AUTO), afhVar);
                }
            }
            ax(j, afhVar);
        }
        bgm bgmVar3 = cygVar.z;
        cyg.ak(bgmVar3);
        bgmVar3.f11519c.h("Default event parameters not found");
        cursor.close();
        ap.bf(bundle, bundle2);
        dkq ap22 = ap();
        dsd bm2 = bm();
        String str22 = afhVar.zza;
        bm2.getClass();
        ap22.ca(f2, Math.max(Math.min(bm2.k(str22, gad.bp), 100), 25));
        j = f2.j();
        if ("_cmp".equals(j.zza)) {
            zzg = j.zzb.zzg("gclid");
            if (!TextUtils.isEmpty(zzg)) {
            }
        }
        ax(j, afhVar);
    }

    public final long bs() {
        ((czz) zzav()).getClass();
        long currentTimeMillis = System.currentTimeMillis();
        aaq aaqVar = this.y;
        aaqVar.n();
        aaqVar._e();
        fou fouVar = aaqVar.f9872e;
        long f2 = fouVar.f();
        if (f2 == 0) {
            cyg.ai(((cyg) aaqVar.z).m);
            f2 = r2.av().nextInt(86400000) + 1;
            fouVar.g(f2);
        }
        return ((((currentTimeMillis + f2) / 1000) / 60) / 60) / 24;
    }

    @Override // g.gan
    public final Context zzau() {
        return this.m.v;
    }

    @Override // g.gan
    public final cvb zzav() {
        cyg cygVar = this.m;
        ckd.k(cygVar);
        return cygVar.f13743ab;
    }

    @Override // g.gan
    public final fbc zzaw() {
        throw null;
    }

    @Override // g.gan
    public final bgm zzay() {
        cyg cygVar = this.m;
        ckd.k(cygVar);
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        return bgmVar;
    }

    @Override // g.gan
    public final fth zzaz() {
        cyg cygVar = this.m;
        ckd.k(cygVar);
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        return fthVar;
    }
}
