using System.Text.Json;
using System.IO;
using System;
using JetBrains.Annotations;

public class Config {
    public const string CONFIG_PATH = "config.json";

    public string QuestAddress {get; set;}
    public int QuestPort {get; set;}
    public int UpdateInterval {get; set;} // In milliseconds
    
    public bool? Filter { get; set; }
    
    [CanBeNull] public String[] FilterList { get; set;}
}