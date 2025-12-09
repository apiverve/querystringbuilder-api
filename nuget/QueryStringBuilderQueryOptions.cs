using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.QueryStringBuilder
{
    /// <summary>
    /// Query options for the Query String Builder API
    /// </summary>
    public class QueryStringBuilderQueryOptions
    {
        /// <summary>
        /// JSON object of parameters
        /// Example: {"name":"John","age":30}
        /// </summary>
        [JsonProperty("params")]
        public string Params { get; set; }

        /// <summary>
        /// URL encode parameter values
        /// Example: true
        /// </summary>
        [JsonProperty("encode")]
        public string Encode { get; set; }
    }
}
