package g;

import j$.util.Objects;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class dpm {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f14594a = dsr.k(dpm.class);

    /* renamed from: b, reason: collision with root package name */
    public static final cwx[] f14595b = new cwx[0];

    /* renamed from: c, reason: collision with root package name */
    public static final cwx[] f14596c = {cwx.t};

    /* renamed from: d, reason: collision with root package name */
    public final dwg f14597d;

    /* renamed from: e, reason: collision with root package name */
    public int f14598e;

    /* renamed from: f, reason: collision with root package name */
    public aht[] f14599f;

    public dpm(dwg dwgVar) {
        this.f14597d = dwgVar;
    }

    public static String g(DataInputStream dataInputStream) {
        int readByte = dataInputStream.readByte() & 255;
        byte[] bArr = new byte[readByte];
        int read = dataInputStream.read(bArr);
        while (read != readByte) {
            int read2 = dataInputStream.read(bArr, read, readByte - read);
            if (read2 == -1) {
                throw new IOException("String read error");
            }
            read += read2;
        }
        return new String(bArr, "US-ASCII");
    }

    public final ArrayList h(DataInputStream dataInputStream, ve veVar) {
        short readShort = dataInputStream.readShort();
        ArrayList arrayList = new ArrayList(readShort);
        for (int i = 0; i < readShort; i++) {
            String g2 = g(dataInputStream);
            List k = k(dataInputStream);
            cwx j = j(dataInputStream);
            List k2 = k(dataInputStream);
            List list = (k2.isEmpty() || k2.equals(k)) ? k : k2;
            cwx j2 = j(dataInputStream);
            cwx cwxVar = Objects.equals(j2, j) ? j : j2;
            arrayList.add(new fhm(ayu.k(this.f14597d, veVar, g2, k, j), list, cwxVar, k(dataInputStream), k(dataInputStream), dataInputStream.readInt()));
        }
        return arrayList;
    }

    public final void i(InputStream inputStream) {
        cwx[] cwxVarArr;
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream));
        try {
            byte[] bArr = new byte[8];
            if (dataInputStream.read(bArr) != 8 || !"jadx-cst".equals(new String(bArr, "US-ASCII"))) {
                throw new heq("Wrong jadx class set header");
            }
            byte readByte = dataInputStream.readByte();
            if (readByte != 5) {
                throw new heq("Wrong jadx class set version, got: " + ((int) readByte) + ", expect: 5");
            }
            this.f14598e = dataInputStream.readInt();
            int readInt = dataInputStream.readInt();
            this.f14599f = new aht[readInt];
            for (int i = 0; i < readInt; i++) {
                int readInt2 = dataInputStream.readInt();
                int readByte2 = dataInputStream.readByte() & 255;
                dom[] values = dom.values();
                if (readByte2 < 0 || readByte2 > values.length) {
                    throw new heq("Wrong jadx source identifier: " + readByte2);
                }
                dom domVar = values[readByte2];
                this.f14599f[i] = new aht(readInt2, cwx.bf(g(dataInputStream)));
            }
            for (int i2 = 0; i2 < readInt; i2++) {
                aht ahtVar = this.f14599f[i2];
                ve h = ve.h(this.f14597d, ahtVar.f10238c);
                int readByte3 = dataInputStream.readByte();
                if (readByte3 == -2) {
                    cwxVarArr = f14596c;
                } else if (readByte3 == -1) {
                    cwxVarArr = null;
                } else if (readByte3 != 0) {
                    cwxVarArr = new cwx[readByte3];
                    for (int i3 = 0; i3 < readByte3; i3++) {
                        cwxVarArr[i3] = j(dataInputStream);
                    }
                } else {
                    cwxVarArr = f14595b;
                }
                ahtVar.f10240e = cwxVarArr;
                ahtVar.f10237b = k(dataInputStream);
                ArrayList h2 = h(dataInputStream, h);
                HashMap hashMap = new HashMap(h2.size());
                Iterator it = h2.iterator();
                while (it.hasNext()) {
                    fhm fhmVar = (fhm) it.next();
                    hashMap.put(fhmVar.m.f11077e, fhmVar);
                }
                ahtVar.f10236a = hashMap;
            }
            dataInputStream.close();
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final cwx j(DataInputStream dataInputStream) {
        byte readByte = dataInputStream.readByte();
        if (readByte == -1) {
            return null;
        }
        switch (gax.f17827a[ffc.values()[readByte].ordinal()]) {
            case 1:
                byte readByte2 = dataInputStream.readByte();
                be beVar = readByte2 == 0 ? be.UNBOUND : readByte2 == 1 ? be.EXTENDS : be.SUPER;
                return beVar == be.UNBOUND ? cwx.ar : new gzg(j(dataInputStream), beVar);
            case 2:
                return new gvo((aog) j(dataInputStream), (aog) j(dataInputStream));
            case 3:
                return cwx.bd(this.f14599f[dataInputStream.readInt()].f10238c, k(dataInputStream));
            case 4:
                return new btl(g(dataInputStream), k(dataInputStream));
            case 5:
                return this.f14599f[dataInputStream.readInt()].f10238c;
            case 6:
                cwx j = j(dataInputStream);
                Objects.requireNonNull(j);
                return new aoe(j);
            case 7:
                return cwx.bb((char) dataInputStream.readByte());
            default:
                throw new gck(awf.ac(readByte, "Unsupported Arg Type: "));
        }
    }

    public final List k(DataInputStream dataInputStream) {
        byte readByte = dataInputStream.readByte();
        if (readByte == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(readByte);
        for (int i = 0; i < readByte; i++) {
            arrayList.add(j(dataInputStream));
        }
        return arrayList;
    }
}
