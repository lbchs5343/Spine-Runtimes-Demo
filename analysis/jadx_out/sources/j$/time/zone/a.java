package j$.time.zone;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.time.ZoneOffset;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public final class a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* renamed from: a, reason: collision with root package name */
    public byte f20635a;

    /* renamed from: b, reason: collision with root package name */
    public Object f20636b;

    public a() {
    }

    public a(byte b2, Object obj) {
        this.f20635a = b2;
        this.f20636b = obj;
    }

    public static long a(DataInput dataInput) {
        if ((dataInput.readByte() & 255) == 255) {
            return dataInput.readLong();
        }
        return ((((r0 << 16) + ((dataInput.readByte() & 255) << 8)) + (dataInput.readByte() & 255)) * 900) - 4575744000L;
    }

    public static ZoneOffset b(DataInput dataInput) {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? ZoneOffset.J(dataInput.readInt()) : ZoneOffset.J(readByte * 900);
    }

    public static void c(long j, DataOutput dataOutput) {
        if (j < -4575744000L || j >= 10413792000L || j % 900 != 0) {
            dataOutput.writeByte(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            dataOutput.writeLong(j);
        } else {
            int i = (int) ((j + 4575744000L) / 900);
            dataOutput.writeByte((i >>> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            dataOutput.writeByte((i >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            dataOutput.writeByte(i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        }
    }

    public static void d(ZoneOffset zoneOffset, DataOutput dataOutput) {
        int i = zoneOffset.f20451b;
        int i2 = i % AVMDLDataLoader.KeyIsMaxIpCountEachDomain == 0 ? i / AVMDLDataLoader.KeyIsMaxIpCountEachDomain : TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    private Object readResolve() {
        return this.f20636b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object fVar;
        byte readByte = objectInput.readByte();
        this.f20635a = readByte;
        if (readByte == 1) {
            long[] jArr = f.i;
            int readInt = objectInput.readInt();
            long[] jArr2 = readInt == 0 ? jArr : new long[readInt];
            for (int i = 0; i < readInt; i++) {
                jArr2[i] = a(objectInput);
            }
            int i2 = readInt + 1;
            ZoneOffset[] zoneOffsetArr = new ZoneOffset[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                zoneOffsetArr[i3] = b(objectInput);
            }
            int readInt2 = objectInput.readInt();
            if (readInt2 != 0) {
                jArr = new long[readInt2];
            }
            long[] jArr3 = jArr;
            for (int i4 = 0; i4 < readInt2; i4++) {
                jArr3[i4] = a(objectInput);
            }
            int i5 = readInt2 + 1;
            ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[i5];
            for (int i6 = 0; i6 < i5; i6++) {
                zoneOffsetArr2[i6] = b(objectInput);
            }
            int readByte2 = objectInput.readByte();
            e[] eVarArr = readByte2 == 0 ? f.j : new e[readByte2];
            for (int i7 = 0; i7 < readByte2; i7++) {
                eVarArr[i7] = e.a(objectInput);
            }
            fVar = new f(jArr2, zoneOffsetArr, jArr3, zoneOffsetArr2, eVarArr);
        } else if (readByte == 2) {
            int i8 = b.f20637e;
            long a2 = a(objectInput);
            ZoneOffset b2 = b(objectInput);
            ZoneOffset b3 = b(objectInput);
            if (b2.equals(b3)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            fVar = new b(a2, b2, b3);
        } else if (readByte == 3) {
            fVar = e.a(objectInput);
        } else {
            if (readByte != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            fVar = new f(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.f20636b = fVar;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b2 = this.f20635a;
        Object obj = this.f20636b;
        objectOutput.writeByte(b2);
        if (b2 != 1) {
            if (b2 == 2) {
                b bVar = (b) obj;
                c(bVar.f20638a, objectOutput);
                d(bVar.f20640c, objectOutput);
                d(bVar.f20641d, objectOutput);
                return;
            }
            if (b2 == 3) {
                ((e) obj).b(objectOutput);
                return;
            } else {
                if (b2 != 100) {
                    throw new InvalidClassException("Unknown serialized type");
                }
                objectOutput.writeUTF(((f) obj).f20657g.getID());
                return;
            }
        }
        f fVar = (f) obj;
        objectOutput.writeInt(fVar.f20651a.length);
        for (long j : fVar.f20651a) {
            c(j, objectOutput);
        }
        for (ZoneOffset zoneOffset : fVar.f20652b) {
            d(zoneOffset, objectOutput);
        }
        objectOutput.writeInt(fVar.f20653c.length);
        for (long j2 : fVar.f20653c) {
            c(j2, objectOutput);
        }
        for (ZoneOffset zoneOffset2 : fVar.f20655e) {
            d(zoneOffset2, objectOutput);
        }
        objectOutput.writeByte(fVar.f20656f.length);
        for (e eVar : fVar.f20656f) {
            eVar.b(objectOutput);
        }
    }
}
